#include "command.h"

/* RGB true-color or false-color from multispectral images */
#include "rgb.h"
/* Distance to each other pixel in the image in feature space */
#include "distance.h"
/* Edge detection in multispectral images */
#include "edge_detection.h"
/* Distance measures for grayscale images */
#include "command_similarity_measure.h"

#include <string>
#include <map>

namespace vole {

class Modules : public std::map<const std::string, Command *> {

public:
	typedef std::map<const std::string, Command *>::iterator iterator;
	typedef std::map<const std::string, Command *>::const_iterator const_iterator;

	Modules(); // see generated_commands_template.txt for implementation
	~Modules() {
		for (const_iterator it = begin(); it != end(); ++it)
			delete it->second;
	}
};

}

