#!/bin/bash
#--------------------------------------------------------------------------
# Code generated by the SmartSoft MDSD Toolchain
# The SmartSoft Toolchain has been developed by:
#  
# Service Robotics Research Center
# University of Applied Sciences Ulm
# Prittwitzstr. 10
# 89075 Ulm (Germany)
#
# Information about the SmartSoft MDSD Toolchain is available at:
# www.servicerobotik-ulm.de
#
# Please do not modify this file. It will be re-generated
# running the code generator.
#--------------------------------------------------------------------------
#
# run this script from the component's root folder to deploy the scenario to device.
#

TARGET_SSHUSER=robotino
TARGET_IP=c26-26-robotino3
TARGET_DIRECTORY="/tmp"
DEPLOYMENT_DIRECTORY=SystemRobotinoNavigation.deployment/

echo "#######################################################"
echo "## Deployment of Device PC1 / $TARGET_IP"
echo "#######################################################"
echo "Target SSH user:      $TARGET_SSHUSER"
echo "Target IP:            $TARGET_IP"
echo "Target directory:     $TARGET_DIRECTORY"
echo "Deployment directory: $DEPLOYMENT_DIRECTORY"

echo "Working directory of deployment script: "`pwd`

echo Sourcing referenced projects
source src-gen/deployment/referenced-projects

DEPLOY_LIBRARIES_USER=""
###############################
echo "Sourcing pre-deployment script for ComponentKB_11... (errors might be ignored)"
DEPLOY_LIBRARIES=""
DEPLOY_COMPONENT_FILES=""
source src/predeploy-ComponentKB_11.sh 2>&1

for I in $DEPLOY_LIBRARIES; do
	if [ -e "$SMART_ROOT_ACE/bin/$I" ]; then
		FILE="$SMART_ROOT_ACE/bin/$I"
	else
		FILE="$SMART_ROOT_ACE/lib/$I"
	fi
	DEPLOY_LIBRARIES_USER="$DEPLOY_LIBRARIES_USER $FILE"
done

DEPLOY_COMPONENT_FILES_PATHS_ComponentKB=""
for I in $DEPLOY_COMPONENT_FILES; do
	if ls $REFERENCED_PROJECT_ComponentKB/$I > /dev/null 2>&1; then
		DEPLOY_COMPONENT_FILES_PATHS_ComponentKB="$DEPLOY_COMPONENT_FILES_PATHS_ComponentKB $REFERENCED_PROJECT_ComponentKB/$I"
	elif ls $I > /dev/null 2>&1; then
		DEPLOY_COMPONENT_FILES_PATHS_ComponentKB="$DEPLOY_COMPONENT_FILES_PATHS_ComponentKB $I"
	fi
done

#########################
## BEHAVIOR FILES
shopt -u | grep -q nullglob && changed=true && shopt -s nullglob
for entry in "$REFERENCED_PROJECT_ComponentKB"/model/*.smartTcl
do
  DEPLOY_COMPONENT_BEHAVIOR_MODEL_FILES_ComponentKB="$DEPLOY_COMPONENT_TCL_MODEL_FILES_ComponentKB $entry"
done
[ $changed ] && shopt -u nullglob; unset changed

echo "$DEPLOY_COMPONENT_BEHAVIOR_MODEL_FILES_ComponentKB "
#########################

echo
###############################
 
###############################
echo "Sourcing pre-deployment script for ComponentLaserLMS1xx... (errors might be ignored)"
DEPLOY_LIBRARIES=""
DEPLOY_COMPONENT_FILES=""
source src/predeploy-ComponentLaserLMS1xx.sh 2>&1

for I in $DEPLOY_LIBRARIES; do
	if [ -e "$SMART_ROOT_ACE/bin/$I" ]; then
		FILE="$SMART_ROOT_ACE/bin/$I"
	else
		FILE="$SMART_ROOT_ACE/lib/$I"
	fi
	DEPLOY_LIBRARIES_USER="$DEPLOY_LIBRARIES_USER $FILE"
done

DEPLOY_COMPONENT_FILES_PATHS_ComponentLaserLMS1xx=""
for I in $DEPLOY_COMPONENT_FILES; do
	if ls $REFERENCED_PROJECT_ComponentLaserLMS1xx/$I > /dev/null 2>&1; then
		DEPLOY_COMPONENT_FILES_PATHS_ComponentLaserLMS1xx="$DEPLOY_COMPONENT_FILES_PATHS_ComponentLaserLMS1xx $REFERENCED_PROJECT_ComponentLaserLMS1xx/$I"
	elif ls $I > /dev/null 2>&1; then
		DEPLOY_COMPONENT_FILES_PATHS_ComponentLaserLMS1xx="$DEPLOY_COMPONENT_FILES_PATHS_ComponentLaserLMS1xx $I"
	fi
done

#########################
## BEHAVIOR FILES
shopt -u | grep -q nullglob && changed=true && shopt -s nullglob
for entry in "$REFERENCED_PROJECT_ComponentLaserLMS1xx"/model/*.smartTcl
do
  DEPLOY_COMPONENT_BEHAVIOR_MODEL_FILES_ComponentLaserLMS1xx="$DEPLOY_COMPONENT_TCL_MODEL_FILES_ComponentLaserLMS1xx $entry"
done
[ $changed ] && shopt -u nullglob; unset changed

echo "$DEPLOY_COMPONENT_BEHAVIOR_MODEL_FILES_ComponentLaserLMS1xx "
#########################

echo
###############################
 
###############################
echo "Sourcing pre-deployment script for ComponentRobotinoBaseServer... (errors might be ignored)"
DEPLOY_LIBRARIES=""
DEPLOY_COMPONENT_FILES=""
source src/predeploy-ComponentRobotinoBaseServer.sh 2>&1

for I in $DEPLOY_LIBRARIES; do
	if [ -e "$SMART_ROOT_ACE/bin/$I" ]; then
		FILE="$SMART_ROOT_ACE/bin/$I"
	else
		FILE="$SMART_ROOT_ACE/lib/$I"
	fi
	DEPLOY_LIBRARIES_USER="$DEPLOY_LIBRARIES_USER $FILE"
done

DEPLOY_COMPONENT_FILES_PATHS_ComponentRobotinoBaseServer=""
for I in $DEPLOY_COMPONENT_FILES; do
	if ls $REFERENCED_PROJECT_ComponentRobotinoBaseServer/$I > /dev/null 2>&1; then
		DEPLOY_COMPONENT_FILES_PATHS_ComponentRobotinoBaseServer="$DEPLOY_COMPONENT_FILES_PATHS_ComponentRobotinoBaseServer $REFERENCED_PROJECT_ComponentRobotinoBaseServer/$I"
	elif ls $I > /dev/null 2>&1; then
		DEPLOY_COMPONENT_FILES_PATHS_ComponentRobotinoBaseServer="$DEPLOY_COMPONENT_FILES_PATHS_ComponentRobotinoBaseServer $I"
	fi
done

#########################
## BEHAVIOR FILES
shopt -u | grep -q nullglob && changed=true && shopt -s nullglob
for entry in "$REFERENCED_PROJECT_ComponentRobotinoBaseServer"/model/*.smartTcl
do
  DEPLOY_COMPONENT_BEHAVIOR_MODEL_FILES_ComponentRobotinoBaseServer="$DEPLOY_COMPONENT_TCL_MODEL_FILES_ComponentRobotinoBaseServer $entry"
done
[ $changed ] && shopt -u nullglob; unset changed

echo "$DEPLOY_COMPONENT_BEHAVIOR_MODEL_FILES_ComponentRobotinoBaseServer "
#########################

echo
###############################
 
###############################
echo "Sourcing pre-deployment script for ComponentTCLSequencer... (errors might be ignored)"
DEPLOY_LIBRARIES=""
DEPLOY_COMPONENT_FILES=""
source src/predeploy-ComponentTCLSequencer.sh 2>&1

for I in $DEPLOY_LIBRARIES; do
	if [ -e "$SMART_ROOT_ACE/bin/$I" ]; then
		FILE="$SMART_ROOT_ACE/bin/$I"
	else
		FILE="$SMART_ROOT_ACE/lib/$I"
	fi
	DEPLOY_LIBRARIES_USER="$DEPLOY_LIBRARIES_USER $FILE"
done

DEPLOY_COMPONENT_FILES_PATHS_ComponentTCLSequencer=""
for I in $DEPLOY_COMPONENT_FILES; do
	if ls $REFERENCED_PROJECT_ComponentTCLSequencer/$I > /dev/null 2>&1; then
		DEPLOY_COMPONENT_FILES_PATHS_ComponentTCLSequencer="$DEPLOY_COMPONENT_FILES_PATHS_ComponentTCLSequencer $REFERENCED_PROJECT_ComponentTCLSequencer/$I"
	elif ls $I > /dev/null 2>&1; then
		DEPLOY_COMPONENT_FILES_PATHS_ComponentTCLSequencer="$DEPLOY_COMPONENT_FILES_PATHS_ComponentTCLSequencer $I"
	fi
done

#########################
## BEHAVIOR FILES
shopt -u | grep -q nullglob && changed=true && shopt -s nullglob
for entry in "$REFERENCED_PROJECT_ComponentTCLSequencer"/model/*.smartTcl
do
  DEPLOY_COMPONENT_BEHAVIOR_MODEL_FILES_ComponentTCLSequencer="$DEPLOY_COMPONENT_TCL_MODEL_FILES_ComponentTCLSequencer $entry"
done
[ $changed ] && shopt -u nullglob; unset changed

echo "$DEPLOY_COMPONENT_BEHAVIOR_MODEL_FILES_ComponentTCLSequencer "
#########################

echo
###############################
 
###############################
echo "Sourcing pre-deployment script for SmartAmcl... (errors might be ignored)"
DEPLOY_LIBRARIES=""
DEPLOY_COMPONENT_FILES=""
source src/predeploy-SmartAmcl.sh 2>&1

for I in $DEPLOY_LIBRARIES; do
	if [ -e "$SMART_ROOT_ACE/bin/$I" ]; then
		FILE="$SMART_ROOT_ACE/bin/$I"
	else
		FILE="$SMART_ROOT_ACE/lib/$I"
	fi
	DEPLOY_LIBRARIES_USER="$DEPLOY_LIBRARIES_USER $FILE"
done

DEPLOY_COMPONENT_FILES_PATHS_SmartAmcl=""
for I in $DEPLOY_COMPONENT_FILES; do
	if ls $REFERENCED_PROJECT_SmartAmcl/$I > /dev/null 2>&1; then
		DEPLOY_COMPONENT_FILES_PATHS_SmartAmcl="$DEPLOY_COMPONENT_FILES_PATHS_SmartAmcl $REFERENCED_PROJECT_SmartAmcl/$I"
	elif ls $I > /dev/null 2>&1; then
		DEPLOY_COMPONENT_FILES_PATHS_SmartAmcl="$DEPLOY_COMPONENT_FILES_PATHS_SmartAmcl $I"
	fi
done

#########################
## BEHAVIOR FILES
shopt -u | grep -q nullglob && changed=true && shopt -s nullglob
for entry in "$REFERENCED_PROJECT_SmartAmcl"/model/*.smartTcl
do
  DEPLOY_COMPONENT_BEHAVIOR_MODEL_FILES_SmartAmcl="$DEPLOY_COMPONENT_TCL_MODEL_FILES_SmartAmcl $entry"
done
[ $changed ] && shopt -u nullglob; unset changed

echo "$DEPLOY_COMPONENT_BEHAVIOR_MODEL_FILES_SmartAmcl "
#########################

echo
###############################
 
###############################
echo "Sourcing pre-deployment script for SmartCdlServer1... (errors might be ignored)"
DEPLOY_LIBRARIES=""
DEPLOY_COMPONENT_FILES=""
source src/predeploy-SmartCdlServer1.sh 2>&1

for I in $DEPLOY_LIBRARIES; do
	if [ -e "$SMART_ROOT_ACE/bin/$I" ]; then
		FILE="$SMART_ROOT_ACE/bin/$I"
	else
		FILE="$SMART_ROOT_ACE/lib/$I"
	fi
	DEPLOY_LIBRARIES_USER="$DEPLOY_LIBRARIES_USER $FILE"
done

DEPLOY_COMPONENT_FILES_PATHS_SmartCdlServer=""
for I in $DEPLOY_COMPONENT_FILES; do
	if ls $REFERENCED_PROJECT_SmartCdlServer/$I > /dev/null 2>&1; then
		DEPLOY_COMPONENT_FILES_PATHS_SmartCdlServer="$DEPLOY_COMPONENT_FILES_PATHS_SmartCdlServer $REFERENCED_PROJECT_SmartCdlServer/$I"
	elif ls $I > /dev/null 2>&1; then
		DEPLOY_COMPONENT_FILES_PATHS_SmartCdlServer="$DEPLOY_COMPONENT_FILES_PATHS_SmartCdlServer $I"
	fi
done

#########################
## BEHAVIOR FILES
shopt -u | grep -q nullglob && changed=true && shopt -s nullglob
for entry in "$REFERENCED_PROJECT_SmartCdlServer"/model/*.smartTcl
do
  DEPLOY_COMPONENT_BEHAVIOR_MODEL_FILES_SmartCdlServer="$DEPLOY_COMPONENT_TCL_MODEL_FILES_SmartCdlServer $entry"
done
[ $changed ] && shopt -u nullglob; unset changed

echo "$DEPLOY_COMPONENT_BEHAVIOR_MODEL_FILES_SmartCdlServer "
#########################

echo
###############################
 
###############################
echo "Sourcing pre-deployment script for SmartJoystickNavigation... (errors might be ignored)"
DEPLOY_LIBRARIES=""
DEPLOY_COMPONENT_FILES=""
source src/predeploy-SmartJoystickNavigation.sh 2>&1

for I in $DEPLOY_LIBRARIES; do
	if [ -e "$SMART_ROOT_ACE/bin/$I" ]; then
		FILE="$SMART_ROOT_ACE/bin/$I"
	else
		FILE="$SMART_ROOT_ACE/lib/$I"
	fi
	DEPLOY_LIBRARIES_USER="$DEPLOY_LIBRARIES_USER $FILE"
done

DEPLOY_COMPONENT_FILES_PATHS_SmartJoystickNavigation=""
for I in $DEPLOY_COMPONENT_FILES; do
	if ls $REFERENCED_PROJECT_SmartJoystickNavigation/$I > /dev/null 2>&1; then
		DEPLOY_COMPONENT_FILES_PATHS_SmartJoystickNavigation="$DEPLOY_COMPONENT_FILES_PATHS_SmartJoystickNavigation $REFERENCED_PROJECT_SmartJoystickNavigation/$I"
	elif ls $I > /dev/null 2>&1; then
		DEPLOY_COMPONENT_FILES_PATHS_SmartJoystickNavigation="$DEPLOY_COMPONENT_FILES_PATHS_SmartJoystickNavigation $I"
	fi
done

#########################
## BEHAVIOR FILES
shopt -u | grep -q nullglob && changed=true && shopt -s nullglob
for entry in "$REFERENCED_PROJECT_SmartJoystickNavigation"/model/*.smartTcl
do
  DEPLOY_COMPONENT_BEHAVIOR_MODEL_FILES_SmartJoystickNavigation="$DEPLOY_COMPONENT_TCL_MODEL_FILES_SmartJoystickNavigation $entry"
done
[ $changed ] && shopt -u nullglob; unset changed

echo "$DEPLOY_COMPONENT_BEHAVIOR_MODEL_FILES_SmartJoystickNavigation "
#########################

echo
###############################
 
###############################
echo "Sourcing pre-deployment script for SmartJoystickServer... (errors might be ignored)"
DEPLOY_LIBRARIES=""
DEPLOY_COMPONENT_FILES=""
source src/predeploy-SmartJoystickServer.sh 2>&1

for I in $DEPLOY_LIBRARIES; do
	if [ -e "$SMART_ROOT_ACE/bin/$I" ]; then
		FILE="$SMART_ROOT_ACE/bin/$I"
	else
		FILE="$SMART_ROOT_ACE/lib/$I"
	fi
	DEPLOY_LIBRARIES_USER="$DEPLOY_LIBRARIES_USER $FILE"
done

DEPLOY_COMPONENT_FILES_PATHS_SmartJoystickServer=""
for I in $DEPLOY_COMPONENT_FILES; do
	if ls $REFERENCED_PROJECT_SmartJoystickServer/$I > /dev/null 2>&1; then
		DEPLOY_COMPONENT_FILES_PATHS_SmartJoystickServer="$DEPLOY_COMPONENT_FILES_PATHS_SmartJoystickServer $REFERENCED_PROJECT_SmartJoystickServer/$I"
	elif ls $I > /dev/null 2>&1; then
		DEPLOY_COMPONENT_FILES_PATHS_SmartJoystickServer="$DEPLOY_COMPONENT_FILES_PATHS_SmartJoystickServer $I"
	fi
done

#########################
## BEHAVIOR FILES
shopt -u | grep -q nullglob && changed=true && shopt -s nullglob
for entry in "$REFERENCED_PROJECT_SmartJoystickServer"/model/*.smartTcl
do
  DEPLOY_COMPONENT_BEHAVIOR_MODEL_FILES_SmartJoystickServer="$DEPLOY_COMPONENT_TCL_MODEL_FILES_SmartJoystickServer $entry"
done
[ $changed ] && shopt -u nullglob; unset changed

echo "$DEPLOY_COMPONENT_BEHAVIOR_MODEL_FILES_SmartJoystickServer "
#########################

echo
###############################
 
###############################
echo "Sourcing pre-deployment script for SmartMapperGridMap1... (errors might be ignored)"
DEPLOY_LIBRARIES=""
DEPLOY_COMPONENT_FILES=""
source src/predeploy-SmartMapperGridMap1.sh 2>&1

for I in $DEPLOY_LIBRARIES; do
	if [ -e "$SMART_ROOT_ACE/bin/$I" ]; then
		FILE="$SMART_ROOT_ACE/bin/$I"
	else
		FILE="$SMART_ROOT_ACE/lib/$I"
	fi
	DEPLOY_LIBRARIES_USER="$DEPLOY_LIBRARIES_USER $FILE"
done

DEPLOY_COMPONENT_FILES_PATHS_SmartMapperGridMap=""
for I in $DEPLOY_COMPONENT_FILES; do
	if ls $REFERENCED_PROJECT_SmartMapperGridMap/$I > /dev/null 2>&1; then
		DEPLOY_COMPONENT_FILES_PATHS_SmartMapperGridMap="$DEPLOY_COMPONENT_FILES_PATHS_SmartMapperGridMap $REFERENCED_PROJECT_SmartMapperGridMap/$I"
	elif ls $I > /dev/null 2>&1; then
		DEPLOY_COMPONENT_FILES_PATHS_SmartMapperGridMap="$DEPLOY_COMPONENT_FILES_PATHS_SmartMapperGridMap $I"
	fi
done

#########################
## BEHAVIOR FILES
shopt -u | grep -q nullglob && changed=true && shopt -s nullglob
for entry in "$REFERENCED_PROJECT_SmartMapperGridMap"/model/*.smartTcl
do
  DEPLOY_COMPONENT_BEHAVIOR_MODEL_FILES_SmartMapperGridMap="$DEPLOY_COMPONENT_TCL_MODEL_FILES_SmartMapperGridMap $entry"
done
[ $changed ] && shopt -u nullglob; unset changed

echo "$DEPLOY_COMPONENT_BEHAVIOR_MODEL_FILES_SmartMapperGridMap "
#########################

echo
###############################
 
###############################
echo "Sourcing pre-deployment script for SmartPlannerBreadthFirstSearch1... (errors might be ignored)"
DEPLOY_LIBRARIES=""
DEPLOY_COMPONENT_FILES=""
source src/predeploy-SmartPlannerBreadthFirstSearch1.sh 2>&1

for I in $DEPLOY_LIBRARIES; do
	if [ -e "$SMART_ROOT_ACE/bin/$I" ]; then
		FILE="$SMART_ROOT_ACE/bin/$I"
	else
		FILE="$SMART_ROOT_ACE/lib/$I"
	fi
	DEPLOY_LIBRARIES_USER="$DEPLOY_LIBRARIES_USER $FILE"
done

DEPLOY_COMPONENT_FILES_PATHS_SmartPlannerBreadthFirstSearch=""
for I in $DEPLOY_COMPONENT_FILES; do
	if ls $REFERENCED_PROJECT_SmartPlannerBreadthFirstSearch/$I > /dev/null 2>&1; then
		DEPLOY_COMPONENT_FILES_PATHS_SmartPlannerBreadthFirstSearch="$DEPLOY_COMPONENT_FILES_PATHS_SmartPlannerBreadthFirstSearch $REFERENCED_PROJECT_SmartPlannerBreadthFirstSearch/$I"
	elif ls $I > /dev/null 2>&1; then
		DEPLOY_COMPONENT_FILES_PATHS_SmartPlannerBreadthFirstSearch="$DEPLOY_COMPONENT_FILES_PATHS_SmartPlannerBreadthFirstSearch $I"
	fi
done

#########################
## BEHAVIOR FILES
shopt -u | grep -q nullglob && changed=true && shopt -s nullglob
for entry in "$REFERENCED_PROJECT_SmartPlannerBreadthFirstSearch"/model/*.smartTcl
do
  DEPLOY_COMPONENT_BEHAVIOR_MODEL_FILES_SmartPlannerBreadthFirstSearch="$DEPLOY_COMPONENT_TCL_MODEL_FILES_SmartPlannerBreadthFirstSearch $entry"
done
[ $changed ] && shopt -u nullglob; unset changed

echo "$DEPLOY_COMPONENT_BEHAVIOR_MODEL_FILES_SmartPlannerBreadthFirstSearch "
#########################

echo
###############################
 


DEPL_FILES="
$SMART_ROOT_ACE/lib/libAceSmartSoftKernel.so
$SMART_ROOT_ACE/lib/libSmartProperty.so.*
src-gen/deployment/tiler.sh
src-gen/deployment/start-PC1.sh
$SMART_ROOT_ACE/bin/NamingService
src-gen/deployment/ns_config.ini
src/ComponentKB_11_data
src/startstop-hooks-ComponentKB_11.sh
$SMART_ROOT_ACE/bin/ComponentKB
src-gen/combined-ini-files/ComponentKB_11.ini
$SMART_ROOT_ACE/lib/libCommBasicObjects.so*
src/ComponentLaserLMS1xx_data
src/startstop-hooks-ComponentLaserLMS1xx.sh
$SMART_ROOT_ACE/bin/ComponentLaserLMS1xx
src-gen/combined-ini-files/ComponentLaserLMS1xx.ini
$SMART_ROOT_ACE/lib/libCommBasicObjects.so*
src/ComponentRobotinoBaseServer_data
src/startstop-hooks-ComponentRobotinoBaseServer.sh
$SMART_ROOT_ACE/bin/ComponentRobotinoBaseServer
src-gen/combined-ini-files/ComponentRobotinoBaseServer.ini
$SMART_ROOT_ACE/lib/libCommBasicObjects.so*
$SMART_ROOT_ACE/lib/libCommLocalizationObjects.so*
$SMART_ROOT_ACE/lib/libCommRobotinoObjects.so*
src/ComponentTCLSequencer_data
src/startstop-hooks-ComponentTCLSequencer.sh
$SMART_ROOT_ACE/bin/ComponentTCLSequencer
src-gen/combined-ini-files/ComponentTCLSequencer.ini
src/SmartAmcl_data
src/startstop-hooks-SmartAmcl.sh
$SMART_ROOT_ACE/bin/SmartAmcl
src-gen/combined-ini-files/SmartAmcl.ini
$SMART_ROOT_ACE/lib/libCommBasicObjects.so*
$SMART_ROOT_ACE/lib/libCommLocalizationObjects.so*
src/SmartCdlServer1_data
src/startstop-hooks-SmartCdlServer1.sh
$SMART_ROOT_ACE/bin/SmartCdlServer
src-gen/combined-ini-files/SmartCdlServer1.ini
$SMART_ROOT_ACE/lib/libCommBasicObjects.so*
$SMART_ROOT_ACE/lib/libCommNavigationObjects.so*
$SMART_ROOT_ACE/lib/libCommRobotinoObjects.so*
$SMART_ROOT_ACE/lib/libCommTrackingObjects.so*
src/SmartJoystickNavigation_data
src/startstop-hooks-SmartJoystickNavigation.sh
$SMART_ROOT_ACE/bin/SmartJoystickNavigation
src-gen/combined-ini-files/SmartJoystickNavigation.ini
$SMART_ROOT_ACE/lib/libCommBasicObjects.so*
src/SmartJoystickServer_data
src/startstop-hooks-SmartJoystickServer.sh
$SMART_ROOT_ACE/bin/SmartJoystickServer
src-gen/combined-ini-files/SmartJoystickServer.ini
$SMART_ROOT_ACE/lib/libCommBasicObjects.so*
src/SmartMapperGridMap1_data
src/startstop-hooks-SmartMapperGridMap1.sh
$SMART_ROOT_ACE/bin/SmartMapperGridMap
src-gen/combined-ini-files/SmartMapperGridMap1.ini
$SMART_ROOT_ACE/lib/libCommBasicObjects.so*
$SMART_ROOT_ACE/lib/libCommNavigationObjects.so*
src/SmartPlannerBreadthFirstSearch1_data
src/startstop-hooks-SmartPlannerBreadthFirstSearch1.sh
$SMART_ROOT_ACE/bin/SmartPlannerBreadthFirstSearch
src-gen/combined-ini-files/SmartPlannerBreadthFirstSearch1.ini
$SMART_ROOT_ACE/lib/libCommBasicObjects.so*
$SMART_ROOT_ACE/lib/libCommNavigationObjects.so*

$DEPLOY_LIBRARIES_USER
"

FILES_MISSING=false
for FILE in $DEPL_FILES; do
	if [ ! -e $FILE ]; then
		echo "Deployment: No such file or directory: $FILE"
		FILES_MISSING=true
	fi
done

if [ "$FILES_MISSING" = "true" ]; then
	echo
	echo "ERROR: FILES ARE MISSING FROM THE DEPLOYMENT (see above). Did you compile all components?"
	echo 
	exit 1
fi


if [ "$1" = "local" ]; then
	# local deployment
	mkdir -p $DEPLOYMENT_DIRECTORY
	rsync -l -r -v --progress --exclude ".svn" $DEPL_FILES $DEPLOYMENT_DIRECTORY/PC1
else
	# remote deployment
	SSH_TARGET=robotino@c26-26-robotino3:$TARGET_DIRECTORY/$DEPLOYMENT_DIRECTORY
	echo "Deployment to $SSH_TARGET"
	ssh robotino@c26-26-robotino3 mkdir -p $TARGET_DIRECTORY/$DEPLOYMENT_DIRECTORY
	
	TMPDIR=$(mktemp -d --suffix=.deployment) || exit 1
	echo "Temporary directory: $TMPDIR"
	mkdir $TMPDIR/behaviorFiles
	trap "rm -rf $TMPDIR" EXIT
	
	# collect files in $TMPDIR
	#rsync -l -r -v --progress --exclude ".svn" $DEPL_FILES $TMPDIR/
	cp -rv $DEPL_FILES $TMPDIR 2>&1
#rsync -l -r -v --progress --exclude ".svn" $DEPLOY_COMPONENT_FILES_PATHS_ComponentKB $TMPDIR/ComponentKB_11_data/
if [ ! "$DEPLOY_COMPONENT_FILES_PATHS_ComponentKB" = "" ]; then
	cp -rv $DEPLOY_COMPONENT_FILES_PATHS_ComponentKB $TMPDIR/ComponentKB_11_data/ 2>&1
fi

if [ ! "$DEPLOY_COMPONENT_BEHAVIOR_MODEL_FILES_ComponentKB" = "" ]; then
	cp -rv $DEPLOY_COMPONENT_BEHAVIOR_MODEL_FILES_ComponentKB $TMPDIR/behaviorFiles/ 2>&1
fi

cp -v $REFERENCED_PROJECT_ComponentKB/smartsoft/src/startstop-hooks.sh $TMPDIR/startstop-hooks-component-ComponentKB.sh 2>/dev/null
#rsync -l -r -v --progress --exclude ".svn" $DEPLOY_COMPONENT_FILES_PATHS_ComponentLaserLMS1xx $TMPDIR/ComponentLaserLMS1xx_data/
if [ ! "$DEPLOY_COMPONENT_FILES_PATHS_ComponentLaserLMS1xx" = "" ]; then
	cp -rv $DEPLOY_COMPONENT_FILES_PATHS_ComponentLaserLMS1xx $TMPDIR/ComponentLaserLMS1xx_data/ 2>&1
fi

if [ ! "$DEPLOY_COMPONENT_BEHAVIOR_MODEL_FILES_ComponentLaserLMS1xx" = "" ]; then
	cp -rv $DEPLOY_COMPONENT_BEHAVIOR_MODEL_FILES_ComponentLaserLMS1xx $TMPDIR/behaviorFiles/ 2>&1
fi

cp -v $REFERENCED_PROJECT_ComponentLaserLMS1xx/smartsoft/src/startstop-hooks.sh $TMPDIR/startstop-hooks-component-ComponentLaserLMS1xx.sh 2>/dev/null
#rsync -l -r -v --progress --exclude ".svn" $DEPLOY_COMPONENT_FILES_PATHS_ComponentRobotinoBaseServer $TMPDIR/ComponentRobotinoBaseServer_data/
if [ ! "$DEPLOY_COMPONENT_FILES_PATHS_ComponentRobotinoBaseServer" = "" ]; then
	cp -rv $DEPLOY_COMPONENT_FILES_PATHS_ComponentRobotinoBaseServer $TMPDIR/ComponentRobotinoBaseServer_data/ 2>&1
fi

if [ ! "$DEPLOY_COMPONENT_BEHAVIOR_MODEL_FILES_ComponentRobotinoBaseServer" = "" ]; then
	cp -rv $DEPLOY_COMPONENT_BEHAVIOR_MODEL_FILES_ComponentRobotinoBaseServer $TMPDIR/behaviorFiles/ 2>&1
fi

cp -v $REFERENCED_PROJECT_ComponentRobotinoBaseServer/smartsoft/src/startstop-hooks.sh $TMPDIR/startstop-hooks-component-ComponentRobotinoBaseServer.sh 2>/dev/null
#rsync -l -r -v --progress --exclude ".svn" $DEPLOY_COMPONENT_FILES_PATHS_ComponentTCLSequencer $TMPDIR/ComponentTCLSequencer_data/
if [ ! "$DEPLOY_COMPONENT_FILES_PATHS_ComponentTCLSequencer" = "" ]; then
	cp -rv $DEPLOY_COMPONENT_FILES_PATHS_ComponentTCLSequencer $TMPDIR/ComponentTCLSequencer_data/ 2>&1
fi

if [ ! "$DEPLOY_COMPONENT_BEHAVIOR_MODEL_FILES_ComponentTCLSequencer" = "" ]; then
	cp -rv $DEPLOY_COMPONENT_BEHAVIOR_MODEL_FILES_ComponentTCLSequencer $TMPDIR/behaviorFiles/ 2>&1
fi

cp -v $REFERENCED_PROJECT_ComponentTCLSequencer/smartsoft/src/startstop-hooks.sh $TMPDIR/startstop-hooks-component-ComponentTCLSequencer.sh 2>/dev/null
#rsync -l -r -v --progress --exclude ".svn" $DEPLOY_COMPONENT_FILES_PATHS_SmartAmcl $TMPDIR/SmartAmcl_data/
if [ ! "$DEPLOY_COMPONENT_FILES_PATHS_SmartAmcl" = "" ]; then
	cp -rv $DEPLOY_COMPONENT_FILES_PATHS_SmartAmcl $TMPDIR/SmartAmcl_data/ 2>&1
fi

if [ ! "$DEPLOY_COMPONENT_BEHAVIOR_MODEL_FILES_SmartAmcl" = "" ]; then
	cp -rv $DEPLOY_COMPONENT_BEHAVIOR_MODEL_FILES_SmartAmcl $TMPDIR/behaviorFiles/ 2>&1
fi

cp -v $REFERENCED_PROJECT_SmartAmcl/smartsoft/src/startstop-hooks.sh $TMPDIR/startstop-hooks-component-SmartAmcl.sh 2>/dev/null
#rsync -l -r -v --progress --exclude ".svn" $DEPLOY_COMPONENT_FILES_PATHS_SmartCdlServer $TMPDIR/SmartCdlServer1_data/
if [ ! "$DEPLOY_COMPONENT_FILES_PATHS_SmartCdlServer" = "" ]; then
	cp -rv $DEPLOY_COMPONENT_FILES_PATHS_SmartCdlServer $TMPDIR/SmartCdlServer1_data/ 2>&1
fi

if [ ! "$DEPLOY_COMPONENT_BEHAVIOR_MODEL_FILES_SmartCdlServer" = "" ]; then
	cp -rv $DEPLOY_COMPONENT_BEHAVIOR_MODEL_FILES_SmartCdlServer $TMPDIR/behaviorFiles/ 2>&1
fi

cp -v $REFERENCED_PROJECT_SmartCdlServer/smartsoft/src/startstop-hooks.sh $TMPDIR/startstop-hooks-component-SmartCdlServer.sh 2>/dev/null
#rsync -l -r -v --progress --exclude ".svn" $DEPLOY_COMPONENT_FILES_PATHS_SmartJoystickNavigation $TMPDIR/SmartJoystickNavigation_data/
if [ ! "$DEPLOY_COMPONENT_FILES_PATHS_SmartJoystickNavigation" = "" ]; then
	cp -rv $DEPLOY_COMPONENT_FILES_PATHS_SmartJoystickNavigation $TMPDIR/SmartJoystickNavigation_data/ 2>&1
fi

if [ ! "$DEPLOY_COMPONENT_BEHAVIOR_MODEL_FILES_SmartJoystickNavigation" = "" ]; then
	cp -rv $DEPLOY_COMPONENT_BEHAVIOR_MODEL_FILES_SmartJoystickNavigation $TMPDIR/behaviorFiles/ 2>&1
fi

cp -v $REFERENCED_PROJECT_SmartJoystickNavigation/smartsoft/src/startstop-hooks.sh $TMPDIR/startstop-hooks-component-SmartJoystickNavigation.sh 2>/dev/null
#rsync -l -r -v --progress --exclude ".svn" $DEPLOY_COMPONENT_FILES_PATHS_SmartJoystickServer $TMPDIR/SmartJoystickServer_data/
if [ ! "$DEPLOY_COMPONENT_FILES_PATHS_SmartJoystickServer" = "" ]; then
	cp -rv $DEPLOY_COMPONENT_FILES_PATHS_SmartJoystickServer $TMPDIR/SmartJoystickServer_data/ 2>&1
fi

if [ ! "$DEPLOY_COMPONENT_BEHAVIOR_MODEL_FILES_SmartJoystickServer" = "" ]; then
	cp -rv $DEPLOY_COMPONENT_BEHAVIOR_MODEL_FILES_SmartJoystickServer $TMPDIR/behaviorFiles/ 2>&1
fi

cp -v $REFERENCED_PROJECT_SmartJoystickServer/smartsoft/src/startstop-hooks.sh $TMPDIR/startstop-hooks-component-SmartJoystickServer.sh 2>/dev/null
#rsync -l -r -v --progress --exclude ".svn" $DEPLOY_COMPONENT_FILES_PATHS_SmartMapperGridMap $TMPDIR/SmartMapperGridMap1_data/
if [ ! "$DEPLOY_COMPONENT_FILES_PATHS_SmartMapperGridMap" = "" ]; then
	cp -rv $DEPLOY_COMPONENT_FILES_PATHS_SmartMapperGridMap $TMPDIR/SmartMapperGridMap1_data/ 2>&1
fi

if [ ! "$DEPLOY_COMPONENT_BEHAVIOR_MODEL_FILES_SmartMapperGridMap" = "" ]; then
	cp -rv $DEPLOY_COMPONENT_BEHAVIOR_MODEL_FILES_SmartMapperGridMap $TMPDIR/behaviorFiles/ 2>&1
fi

cp -v $REFERENCED_PROJECT_SmartMapperGridMap/smartsoft/src/startstop-hooks.sh $TMPDIR/startstop-hooks-component-SmartMapperGridMap.sh 2>/dev/null
#rsync -l -r -v --progress --exclude ".svn" $DEPLOY_COMPONENT_FILES_PATHS_SmartPlannerBreadthFirstSearch $TMPDIR/SmartPlannerBreadthFirstSearch1_data/
if [ ! "$DEPLOY_COMPONENT_FILES_PATHS_SmartPlannerBreadthFirstSearch" = "" ]; then
	cp -rv $DEPLOY_COMPONENT_FILES_PATHS_SmartPlannerBreadthFirstSearch $TMPDIR/SmartPlannerBreadthFirstSearch1_data/ 2>&1
fi

if [ ! "$DEPLOY_COMPONENT_BEHAVIOR_MODEL_FILES_SmartPlannerBreadthFirstSearch" = "" ]; then
	cp -rv $DEPLOY_COMPONENT_BEHAVIOR_MODEL_FILES_SmartPlannerBreadthFirstSearch $TMPDIR/behaviorFiles/ 2>&1
fi

cp -v $REFERENCED_PROJECT_SmartPlannerBreadthFirstSearch/smartsoft/src/startstop-hooks.sh $TMPDIR/startstop-hooks-component-SmartPlannerBreadthFirstSearch.sh 2>/dev/null
	
	#collect and copy behavior related files
	echo "Sourcing behavior files..."
	test -f src-gen/deployment/deploy-behavior-files.sh && source src-gen/deployment/deploy-behavior-files.sh
	
	# actually deploy:
	rsync -z -l -r -v --progress --exclude ".svn" -e ssh $TMPDIR/ $SSH_TARGET
fi


if [ "$?" != "0" ]; then
	echo "ERROR: Files could not be deployed to remote host."
	#gdialog --title ERROR --msgbox "Files could not be deployed host."
	exit 1
fi

echo -e "\n\nDeployment to device PC1 finished.\n\n"
