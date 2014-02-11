FILE(REMOVE_RECURSE
  "__init__.py"
  "__init__.pyc"
  "CMakeFiles/common-optional-lib.dir/optional.cpp.o"
  "libcommon-optional-lib.pdb"
  "libcommon-optional-lib.a"
)

# Per-language clean rules from dependency scanning.
FOREACH(lang CXX)
  INCLUDE(CMakeFiles/common-optional-lib.dir/cmake_clean_${lang}.cmake OPTIONAL)
ENDFOREACH(lang)
