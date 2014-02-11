#include "command.h"
/* Edge detection in multispectral images */
#include "edge_detection.h"

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

