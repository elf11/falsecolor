//system includes
#include <iostream>
#include <sstream>
#include <fstream>

//cv includes
#include <opencv2/core/core.hpp>
#include <opencv2/highgui/highgui.hpp>

#include <sm_factory.h>

#include <multi_img.h>

#include "distance.h"

Distance::Distance()
  : vole::Command("distance", // command name
		  config,
		  "Gerbil",
		  "Gerbil" )
{}

Distance::Distance(const vole::DistanceConfig &cfg)
  : vole::Command("distance", // command name
		  config,
		  "Gerbil",
		  "Gerbil" ),
		  config(cfg)
{}

double Distance::interpolate(double val, double y0, double x0, double y1, double x1) {
	return (val-x0)*(y1-y0)/(x1-x0) + y0;
}

double Distance::base(double val) {
	if (val <= -0.75)
		return 0.;
	else if (val <= -0.25)
		return interpolate(val, 0.0, -0.75, 1.0, -0.25);
	else if (val <= 0.25)
		return 1.;
	else if (val <= 0.75)
		return interpolate(val, 1.0, 0.25, 0.0, 0.75);
	else return 0.;
}

cv::Vec3d Distance::bgr(double gray) {
	gray = gray + gray - 1.;
	return cv::Vec3d(base(gray + 0.5), base(gray), base(gray - 0.5));
}

cv::Mat3d Distance::jet(cv::Mat1d input) {
	cv::Mat3d output(input.rows, input.cols);
	cv::Mat1d::iterator iti = input.begin();
	cv::Mat3d::iterator ito = output.begin();
	for (; iti != input.end(); ++iti, ++ito)
		*ito = bgr(*iti);

	return output;
}

int Distance::execute()
{
	assert(!config.prefix_enabled);
	
	multi_img img;
	img.minval = 0.;
	img.maxval = 1.;
	
	img.read_image(config.input_file);
	
	if (img.empty())
		return -1;

	img.rebuildPixels(false);
	
	vole::SimilarityMeasure<multi_img::Value> *distfun = NULL;
	
	if (!distfun)
		distfun = vole::SMFactory<multi_img::Value>::spawn(config.similarity);
	
	assert(distfun);
	
	cv::Mat1d dx(img.height, img.width);

	for (int y = 0; y < img.height; ++y) {
		double *drow = dx[y];
		for (int x = 0; x < img.width; ++x) {
			drow[x] = distfun->getSimilarity(img(y,x), img(config.yRef, config.xRef));
		}
	}
	
	double mi, max; //, may;
	cv::Point minloc, maxloc;
	cv::minMaxLoc(dx, &mi, &max, &minloc, &maxloc);

	if (config.jetV) 
		cv::imwrite(config.output_file, jet(dx/max)*255.);
	else 
		cv::imwrite(config.output_file, dx/max*255.);

	delete distfun;

	return 0;
}

void Distance::printShortHelp() const
{
	std::cout << "Distance to each other pixel in the image in feature space using similarity measures." << std::endl;
	std::cout << "distance input_file output_file xRef yRef [jet]" << std:: endl;
}

void Distance::printHelp() const
{
	std::cout << "Distance to each other pixel in the image in feature space using similarity measures." << std::endl;
	std::cout << "distance input_file output_file xRef yRef [jet]" << std:: endl;
	std::cout << std::endl;
}
