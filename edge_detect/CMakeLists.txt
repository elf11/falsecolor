vole_module_name("edge_detect")
vole_module_description("Edge detection in multispectral images")
vole_module_variable("Gerbil_Edge_Detect")

vole_add_required_dependencies("OPENCV")
vole_add_optional_dependencies("BOOST" "BOOST_PROGRAM_OPTIONS" "BOOST_FILESYSTEM")
vole_add_required_modules("similarity_measures")
vole_add_optional_modules("gerbil_common")

vole_compile_library(
	"edge_detection"
)

vole_add_command("edge_detect" "edge_detection.h" "EdgeDetection")

vole_compile_library(
	"edge_detection_config"
	"self_organizing_map"
	"neuron"
	"som_trainer"
	"som_tester"
	"som_distance"
)

vole_add_module()
