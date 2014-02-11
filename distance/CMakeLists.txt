vole_module_name("Distance")
vole_module_description("Distance to each other pixel in the image in feature space")
vole_module_variable("Gerbil_Distance")

vole_add_required_dependencies("OPENCV" "TBB")
vole_add_optional_dependencies("BOOST")
vole_add_required_modules("gerbil_common" "imginput" "similarity_measures")
vole_add_optional_modules("edge_detect")

vole_add_command("distance" "distance.h" "Distance")

vole_compile_library(
	"distance"
	"distance_config"
)

vole_add_module()
