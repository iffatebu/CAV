cmake_minimum_required(VERSION 3.8)
project(msu_msgs)

if(CMAKE_COMPILER_IS_GNUCXX OR CMAKE_CXX_COMPILER_ID MATCHES "Clang")
  add_compile_options(-Wall -Wextra -Wpedantic)
endif()

# find dependencies
find_package(ament_cmake REQUIRED)
# uncomment the following section in order to fill in
# further dependencies manually.
find_package(derived_object_msgs REQUIRED)
find_package(mobileye_560_660_msgs REQUIRED)
find_package(std_msgs REQUIRED)
find_package(geometry_msgs REQUIRED)
find_package(can_msgs REQUIRED)
find_package(radar_msgs REQUIRED)
find_package(shape_msgs REQUIRED)
find_package(delphi_esr_msgs REQUIRED)

if(BUILD_TESTING)
  find_package(ament_lint_auto REQUIRED)
  # the following line skips the linter which checks for copyrights
  # comment the line when a copyright and license is added to all source files
  set(ament_cmake_copyright_FOUND TRUE)
  # the following line skips cpplint (only works in a git repo)
  # comment the line when this package is in a git repo and when
  # a copyright and license is added to all source files
  set(ament_cmake_cpplint_FOUND TRUE)
  ament_lint_auto_find_test_dependencies()
endif()

find_package(rosidl_default_generators REQUIRED)

rosidl_generate_interfaces(${PROJECT_NAME}
	"msg/BoschRadarEgoEcho.msg"
	"msg/BoschRadarObject.msg"
	"msg/BoschRadarObjectPacket.msg"
	"msg/BoschRadarStatus.msg"
	"msg/BoschRadarTarget.msg"
	"msg/BoschRadarTargetPacket.msg"
	"msg/BoschVehicleData.msg"
	"msg/CompetitionObject.msg"
	"msg/CompetitionObjectArray.msg"
	"msg/CompetitionObjectPacket.msg"
	"msg/ConnectedCorridor.msg"
	"msg/DelphiTrackPacket.msg"
	"msg/IntersectionData.msg"
	"msg/LongControlData.msg"
	"msg/LongControlRequest.msg"
	"msg/MobileyeObstaclePacket.msg"
	"msg/MPCParameters.msg"
	"msg/VehicleData.msg"
	DEPENDENCIES derived_object_msgs mobileye_560_660_msgs std_msgs geometry_msgs can_msgs radar_msgs shape_msgs delphi_esr_msgs
)

ament_package()
