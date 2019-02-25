FILE(MAKE_DIRECTORY "/home/alberto/Documents/catkin_ws/devel/share/hq_decision_making/graphs" )
FILE(GLOB_RECURSE FOR_DEL /home/alberto/Documents/catkin_ws/devel/share/hq_decision_making/graphs/* )
#message("delete files from /home/alberto/Documents/catkin_ws/devel/share/hq_decision_making/graphs/ : ${FOR_DEL}")
if( FOR_DEL )
	FILE(REMOVE ${FOR_DEL})
endif()
execute_process(COMMAND /home/alberto/Documents/catkin_ws/devel/lib/hq_decision_making_parser/hq_decision_making_parser -pe -xml -dot -src "/home/alberto/Documents/catkin_ws/src/hrp/hq_decision_making" -dst "/home/alberto/Documents/catkin_ws/devel/share/hq_decision_making/graphs" -f "/home/alberto/Documents/catkin_ws/src/hrp/hq_decision_making/src/hq_ROSTask.cpp:" RESULT_VARIABLE rv)
FILE(GLOB_RECURSE CREATED_FILES RELATIVE /home/alberto/Documents/catkin_ws/devel/share/hq_decision_making/graphs/ /home/alberto/Documents/catkin_ws/devel/share/hq_decision_making/graphs/*.scxml /home/alberto/Documents/catkin_ws/devel/share/hq_decision_making/graphs/*.btxml  /home/alberto/Documents/catkin_ws/devel/share/hq_decision_making/graphs/*.taoxml)
message("   -- Created XML files:")
foreach( f ${CREATED_FILES})
     message("      -- ${f} ")
endforeach()
FILE(GLOB_RECURSE CREATED_FILES_ABS /home/alberto/Documents/catkin_ws/devel/share/hq_decision_making/graphs/*.scxml /home/alberto/Documents/catkin_ws/devel/share/hq_decision_making/graphs/*.btxml /home/alberto/Documents/catkin_ws/devel/share/hq_decision_making/graphs/*.taoxml)
execute_process(COMMAND "python" /home/alberto/Documents/catkin_ws/devel/lib/hq_decision_making_parser/hq_decision_making_xml_parser.py -i "/home/alberto/Documents/catkin_ws/src/hrp/hq_decision_making" "/home/alberto/Documents/catkin_ws/devel/share/hq_decision_making/graphs" "${CREATED_FILES_ABS}" RESULT_VARIABLE rv)
FILE(GLOB_RECURSE CREATED_FILES RELATIVE /home/alberto/Documents/catkin_ws/devel/share/hq_decision_making/graphs/ /home/alberto/Documents/catkin_ws/devel/share/hq_decision_making/graphs/*.dot /home/alberto/Documents/catkin_ws/devel/share/hq_decision_making/graphs/*.xot)
message("   -- Created DOT files:")
foreach( f ${CREATED_FILES})
     message("      -- ${f} ")
endforeach()
FILE(GLOB_RECURSE CREATED_FILES_ABS /home/alberto/Documents/catkin_ws/devel/share/hq_decision_making/graphs/*.dot)
foreach( f ${CREATED_FILES_ABS} )
	execute_process(COMMAND "dot" -q1 -Tgif -o${f}.gif  ${f} RESULT_VARIABLE rv)
endforeach()
FILE(GLOB_RECURSE CREATED_FILES RELATIVE /home/alberto/Documents/catkin_ws/devel/share/hq_decision_making/graphs/ /home/alberto/Documents/catkin_ws/devel/share/hq_decision_making/graphs/*.gif)
message("   -- Created GIF files:")
foreach( f ${CREATED_FILES})
     message("      -- ${f} ")
endforeach()