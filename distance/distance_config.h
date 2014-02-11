#ifndef DISTANCE_CONFIG_H
#define DISTANCE_CONFIG_H

#include <vole_config.h>
#include <imginput.h>
#include <sm_config.h>
#ifdef WITH_EDGE_DETECT
#include <edge_detection_config.h>
#endif
#include <multi_img.h>

namespace vole {

class DistanceConfig : public Config {

public:
	DistanceConfig(const std::string& prefix = std::string());

	virtual ~DistanceConfig() {}

	/// input file name
	std::string input_file;
	/// output file name
	std::string output_file;
	
	// the pixel coordinates we want to compare it against
	int xRef;
	int yRef;
	
	// the jet boolean variable
	bool jetV;
	
	// similarity measure
	SMConfig similarity;

	virtual std::string getString() const;

protected:
	#ifdef WITH_BOOST
		virtual void initBoostOptions();
	#endif // WITH_BOOST
};

}

#endif
