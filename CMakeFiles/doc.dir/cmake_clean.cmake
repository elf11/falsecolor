FILE(REMOVE_RECURSE
  "__init__.py"
  "__init__.pyc"
  "CMakeFiles/doc"
)

# Per-language clean rules from dependency scanning.
FOREACH(lang)
  INCLUDE(CMakeFiles/doc.dir/cmake_clean_${lang}.cmake OPTIONAL)
ENDFOREACH(lang)
