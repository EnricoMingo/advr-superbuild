# XBotCore
include(YCMEPHelper)
include(FindOrBuildPackage)

find_or_build_package(XCM QUIET)

find_or_build_package(soem_advr QUIET)
find_or_build_package(walkman-master-ecat QUIET)
find_or_build_package(ec_master_test QUIET)

ycm_ep_helper(  XBotCore
                TYPE GIT
                STYLE GITHUB
                REPOSITORY ADVRHumanoids/xbotcore.git
                TAG centauro_bonn_review_2016
                COMPONENT external
		DEPENDS XCM
			soem_advr
			walkman-master-ecat
			ec_master_test
		CMAKE_CACHE_ARGS -DBUILD_SHARED_LIBS:BOOL=ON
                                 -DENABLE_XENO:BOOL=ON

            )
