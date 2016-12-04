# RobotInterfaceXBotRT
include(YCMEPHelper)
include(FindOrBuildPackage)

find_or_build_package(XBotInterface QUIET)
find_or_build_package(XBotCore-interfaces QUIET)

ycm_ep_helper(  XCM
                TYPE GIT
                STYLE GITLAB_ADVRCLOUD
                REPOSITORY advr_humanoids/XCM.git
                TAG centauro_bonn_review_2016
                COMPONENT external
		DEPENDS XBotInterface
			XBotCore-interfaces
             )
