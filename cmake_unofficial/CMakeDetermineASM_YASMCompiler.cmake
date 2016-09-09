set(ASM_DIALECT "_YASM")
if(NOT DEFINED CMAKE_ASM${ASM_DIALECT}_COMPILER)
if(DEFINED YASM_EXECUTABLE AND EXISTS ${YASM_EXECUTABLE})
	set(CMAKE_ASM${ASM_DIALECT}_COMPILER ${YASM_EXECUTABLE})
endif()
endif()

if(DEFINED _CMAKE_TOOLCHAIN_PREFIX)
set(CMAKE_ASM${ASM_DIALECT}_COMPILER_INIT ${_CMAKE_TOOLCHAIN_PREFIX}yasm)
endif()

message(STATUS "calling CMakeDetermineASMCompiler ${CMAKE_ASM${ASM_DIALECT}_COMPILER} ${CMAKE_ASM${ASM_DIALECT}_COMPILER_INIT}")

include(CMakeDetermineASMCompiler)
set(ASM_DIALECT)
