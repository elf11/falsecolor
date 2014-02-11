#include "distance_config.h"

#ifdef WITH_BOOST
using namespace boost::program_options;
#endif

namespace vole {

DistanceConfig::DistanceConfig(const std::string& p)
 : Config(p), similarity(prefix + "similarity")
{
	xRef = 0.0;
	yRef = 0.0;
	
	jetV = false;
	
	similarity.measure = vole::MOD_SPEC_ANGLE;
	
	#ifdef WITH_BOOST
		initBoostOptions();
	#endif // WITH_BOOST
}

#ifdef WITH_BOOST
void DistanceConfig::initBoostOptions() {
	options.add_options()
		(key("xRef"), value(&xRef)->default_value(xRef),
					"the default reference value for x is 0.0")
		(key("yRef"), value(&yRef)->default_value(yRef),
					"the default reference value for y is 0.0")
		(key("jetV"), value(&jetV)->default_value(jetV),
					"the default reference value for jetV is false")
		;

	options.add(similarity.options);

	if (prefix_enabled)	// skip input/output options
		return;
	
	options.add_options()
		(key("input,I"), value(&input_file)->default_value("input.png"),
		 "Input file name")
		(key("output,O"), value(&output_file)->default_value("output_grayscale.png"),
		 "Output file name")
		;
}
#endif // WITH_BOOST

std::string DistanceConfig::getString() const {
	std::stringstream s;

	if (prefix_enabled) {
		s << "[" << prefix << "]" << std::endl;
	} else {
		s << "input=" << input_file << "\t# Input file name" << std::endl
		  << "output=" << output_file << "\t# Working directory" << std::endl
		  << "xRef=" << xRef << "\tPixel X int value that we use for comparison, the reference value" << std::endl
		  << "yRef=" << yRef << "\tPixel Y int value that we use for comparison, the reference value" << std::endl
		  << "jetV=" << yRef << "\tBoolean valued used to decide if the output will be a jet image" << std::endl
			;
	}
		;

	s << similarity.getString();
	return s.str();
}

}
