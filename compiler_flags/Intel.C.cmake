if(CMAKE_C_COMPILER_ID MATCHES Intel)
    set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS}")
    set(CMAKE_C_FLAGS_RELEASE "-O3")
    set(CMAKE_C_FLAGS_DEBUG "-O0 -g")
endif()
