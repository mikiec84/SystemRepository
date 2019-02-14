CMAKE_MINIMUM_REQUIRED(VERSION 3.0)

INCLUDE(ExternalProject)

ExternalProject_Add(ComponentTrafficLightExternal
	PREFIX ComponentTrafficLight
	SOURCE_DIR "/home/stampfer/SOFTWARE/hiwi-shaplak/CodeForGit/RaspberryTutorial/ComponentTrafficLight/smartsoft"
	BINARY_DIR "/home/stampfer/SOFTWARE/hiwi-shaplak/CodeForGit/RaspberryTutorial/ComponentTrafficLight/smartsoft/build"
	INSTALL_COMMAND ""
)

ExternalProject_Add(ComponentTrafficLightTestExternal
	PREFIX ComponentTrafficLightTest
	SOURCE_DIR "/home/stampfer/SOFTWARE/hiwi-shaplak/CodeForGit/RaspberryTutorial/ComponentTrafficLightTest/smartsoft"
	BINARY_DIR "/home/stampfer/SOFTWARE/hiwi-shaplak/CodeForGit/RaspberryTutorial/ComponentTrafficLightTest/smartsoft/build"
	INSTALL_COMMAND ""
)

