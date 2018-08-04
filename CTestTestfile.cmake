

file(GLOB_RECURSE  iplists bin/*.ini)

message("${iplists}") # a.cpp;b.cpp;c.cpp

foreach(path IN LISTS iplists)
	get_filename_component(target ${path} NAME_WE)
	message("find:${target} = ${path}") # a.cpp;b.cpp;c.cpp
	add_test(${target} "SagradaCui" "--list  ${path}" )
	set_tests_properties(${target} PROPERTIES  WORKING_DIRECTORY "./bin/SAGRADA")

endforeach()