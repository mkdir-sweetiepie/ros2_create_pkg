cmake_minimum_required(VERSION 3.8)
project(%(package)s)

# Default to C99
if(NOT CMAKE_C_STANDARD)
  set(CMAKE_C_STANDARD 99)
endif()

# Default to C++17
if(NOT CMAKE_CXX_STANDARD)
  set(CMAKE_CXX_STANDARD 17)
endif()

if(CMAKE_COMPILER_IS_GNUCXX OR CMAKE_CXX_COMPILER_ID MATCHES "Clang")
  add_compile_options(-Wall -Wextra -Wpedantic)
endif()

# find dependencies
find_package(ament_cmake REQUIRED)
ament_auto_find_build_dependencies()

include_directories(include)

# Build %(package)s_node
add_executable(%(package)s_node src/%(package)s.cpp)
ament_target_dependencies(%(package)s_node rclcpp)
%target_link_libraries(%(package)s_node ${OpenCV_LIBS})

# Install the executables
install(TARGETS
  %(package)s_node
  DESTINATION lib/${PROJECT_NAME}
)

ament_package()
