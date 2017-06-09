# RobotInterfaceXBotRT
include(YCMEPHelper)
include(FindOrBuildPackage)

find_or_build_package(XCM QUIET)

ycm_ep_helper(  RobotInterfaceXBotRT
                TYPE GIT
                STYLE GITHUB
                REPOSITORY ADVRHumanoids/RobotInterfaceXBotRT.git
                TAG master
                COMPONENT external
		DEPENDS XCM
             )
