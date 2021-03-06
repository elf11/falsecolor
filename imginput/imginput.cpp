#include "imginput.h"
#include "gdalreader.h"
#include <string>
#include <vector>

using std::vector;

namespace vole {

multi_img::ptr ImgInput::execute()
{
	if (config.file.empty())
	{
		std::cerr << "No input file specified. Try -H to see available options."
		          << std::endl;
		return multi_img::ptr(new multi_img()); // empty image
	}

	bool roiChanged = false;
	bool bandsCropped = false;
	multi_img::ptr img_ptr(new multi_img(config.file));

#ifdef WITH_GDAL
	// if multi_img-constructor didn't work, try GDALReader
	if (img_ptr->empty())
	{
		img_ptr = GdalReader(config).readFile();

		// GdalReader was used successfully
		if (!img_ptr->empty())
		{
			// GdalReader applies roiChanges & bandCropping
			roiChanged = true;
			bandsCropped = true;
		}
	}
#endif

	// return empty image on failure
	if (img_ptr->empty())
		return img_ptr;

	// apply ROI
	if (!roiChanged && !config.roi.empty())
	{
		std::vector<int> roiVals;
		if (!ImgInput::parseROIString(config.roi, roiVals))
		{
			// Parsing of ROI String failed
			std::cerr << "Ignoring invalid ROI specification" << std::endl;
		}
		else
		{
			applyROI(img_ptr, roiVals);
		}
	}

	// crop spectrum - maybe we used a fancy file reader that cropped the bands already
	if (!bandsCropped)
		cropSpectrum(img_ptr);

	// return empty image on failure
	if (img_ptr->empty())
		return img_ptr;

	#ifdef WITH_GERBIL_COMMON
	// compute gradient
	if (config.gradient) {
		img_ptr->apply_logarithm();
		*img_ptr = img_ptr->spec_gradient();
	}

	// reduce number of bands
	if (config.bands > 0 && config.bands < (int)img_ptr->size()) {
		*img_ptr = img_ptr->spec_rescale(config.bands);
	}
	#endif

	return img_ptr;
}

#ifdef WITH_GERBIL_COMMON
std::pair<multi_img::ptr, multi_img::ptr> ImgInput::both()
{
	// TODO: make this a function that just fails with a nasty message. -> see TODO
	std::cerr << "This function is currently not implemented." << std::endl;
	return std::make_pair(multi_img::ptr(new multi_img()), multi_img::ptr(new multi_img()));

	/*multi_img::ptr img_ptr = execute();

	// return empty image on failure
	if (img_ptr->empty())
		// returns 2 (different) empty image objects, do not use (img, img)
		// (changes to one are not expected to change the other one...)
		return std::make_pair(img_ptr, multi_img::ptr(new multi_img()));

	// compute gradient
	multi_img::ptr proc_ptr = multi_img::ptr(new multi_img(*img_ptr));
	if (config.gradient) {
		proc_ptr->apply_logarithm();
		*proc_ptr = proc_ptr->spec_gradient();
	}

	// TODO: das passiert jetzt vor der Berechnung des Gradienten. Problem?
	// reduce number of bands
	if (config.bands > 0 && config.bands < (int)proc_ptr->size()) {
		*proc_ptr = proc_ptr->spec_rescale(config.bands);
	}

	return std::make_pair(proc_ptr, img_ptr);*/
}
#endif

bool ImgInput::parseROIString(const std::string &str, std::vector<int> &vals)
{
	int ctr = 0;
	std::string::size_type prev_pos = 0, pos = 0;
	while ((pos = str.find(':', pos)) != std::string::npos) {
		vals.push_back(atoi(str.substr(prev_pos, pos - prev_pos).c_str()));
		prev_pos = ++pos;
		++ctr;
	}
	vals.push_back(atoi(str.substr(prev_pos, pos - prev_pos).c_str()));
	return ctr == 3;
}

void ImgInput::applyROI(multi_img::ptr &img_ptr, vector<int>& vals)
{
	img_ptr = multi_img::ptr(new multi_img(*img_ptr, cv::Rect(vals[0], vals[1], vals[2], vals[3])));
}

void ImgInput::cropSpectrum(multi_img::ptr &img_ptr)
{
	if ((config.bandlow > 0) ||
		(config.bandhigh > 0 && config.bandhigh < (int)img_ptr->size() - 1)) {

		// if bandhigh is not specified, do not limit
		int bandhigh = (config.bandhigh == 0) ? (img_ptr->size() - 1) : config.bandhigh;

		// correct input?
		if (config.bandlow > bandhigh || bandhigh > img_ptr->size() - 1)
		{
			std::cerr << "config.bandlow > config.bandhigh || bandhigh > dataset->GetRasterCount() - 1" << std::endl;
			img_ptr = multi_img::ptr(new multi_img());
			return;
		}

		img_ptr = multi_img::ptr(new multi_img(*img_ptr, config.bandlow, bandhigh));
	}
}

} //namespace
