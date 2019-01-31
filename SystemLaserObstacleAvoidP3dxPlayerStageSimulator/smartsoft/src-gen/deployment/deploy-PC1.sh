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

TARGET_SSHUSER=
TARGET_IP=localhost
TARGET_DIRECTORY="/tmp"
DEPLOYMENT_DIRECTORY=SystemLaserObstacleAvoidP3dxPlayerStageSimulator.deployment/

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
echo "Sourcing pre-deployment script for ComponentLaserObstacleAvoid... (errors might be ignored)"
DEPLOY_LIBRARIES=""
DEPLOY_COMPONENT_FILES=""
source src/predeploy-ComponentLaserObstacleAvoid.sh 2>&1

for I in $DEPLOY_LIBRARIES; do
	if [ -e "$SMART_ROOT_ACE/bin/$I" ]; then
		FILE="$SMART_ROOT_ACE/bin/$I"
	else
		FILE="$SMART_ROOT_ACE/lib/$I"
	fi
	DEPLOY_LIBRARIES_USER="$DEPLOY_LIBRARIES_USER $FILE"
done

DEPLOY_COMPONENT_FILES_PATHS_ComponentLaserObstacleAvoid=""
for I in $DEPLOY_COMPONENT_FILES; do
	if ls $REFERENCED_PROJECT_ComponentLaserObstacleAvoid/$I > /dev/null 2>&1; then
		DEPLOY_COMPONENT_FILES_PATHS_ComponentLaserObstacleAvoid="$DEPLOY_COMPONENT_FILES_PATHS_ComponentLaserObstacleAvoid $REFERENCED_PROJECT_ComponentLaserObstacleAvoid/$I"
	elif ls $I > /dev/null 2>&1; then
		DEPLOY_COMPONENT_FILES_PATHS_ComponentLaserObstacleAvoid="$DEPLOY_COMPONENT_FILES_PATHS_ComponentLaserObstacleAvoid $I"
	fi
done

echo
echo "Sourcing pre-deployment script for ComponentPlayerStageSimulator... (errors might be ignored)"
DEPLOY_LIBRARIES=""
DEPLOY_COMPONENT_FILES=""
source src/predeploy-ComponentPlayerStageSimulator.sh 2>&1

for I in $DEPLOY_LIBRARIES; do
	if [ -e "$SMART_ROOT_ACE/bin/$I" ]; then
		FILE="$SMART_ROOT_ACE/bin/$I"
	else
		FILE="$SMART_ROOT_ACE/lib/$I"
	fi
	DEPLOY_LIBRARIES_USER="$DEPLOY_LIBRARIES_USER $FILE"
done

DEPLOY_COMPONENT_FILES_PATHS_ComponentPlayerStageSimulator=""
for I in $DEPLOY_COMPONENT_FILES; do
	if ls $REFERENCED_PROJECT_ComponentPlayerStageSimulator/$I > /dev/null 2>&1; then
		DEPLOY_COMPONENT_FILES_PATHS_ComponentPlayerStageSimulator="$DEPLOY_COMPONENT_FILES_PATHS_ComponentPlayerStageSimulator $REFERENCED_PROJECT_ComponentPlayerStageSimulator/$I"
	elif ls $I > /dev/null 2>&1; then
		DEPLOY_COMPONENT_FILES_PATHS_ComponentPlayerStageSimulator="$DEPLOY_COMPONENT_FILES_PATHS_ComponentPlayerStageSimulator $I"
	fi
done

echo


DEPL_FILES="
$SMART_ROOT_ACE/lib/libAceSmartSoftKernel.so
$SMART_ROOT_ACE/lib/libSmartProperty.so.*
src-gen/deployment/tiler.sh
src-gen/deployment/start-PC1.sh
$SMART_ROOT_ACE/bin/NamingService
src-gen/deployment/ns_config.ini
src/ComponentLaserObstacleAvoid_data
src/startstop-hooks-ComponentLaserObstacleAvoid.sh
$SMART_ROOT_ACE/bin/ComponentLaserObstacleAvoid
src-gen/combined-ini-files/ComponentLaserObstacleAvoid.ini
$SMART_ROOT_ACE/lib/libCommBasicObjects.so*
src/ComponentPlayerStageSimulator_data
src/startstop-hooks-ComponentPlayerStageSimulator.sh
$SMART_ROOT_ACE/bin/ComponentPlayerStageSimulator
src-gen/combined-ini-files/ComponentPlayerStageSimulator.ini
$SMART_ROOT_ACE/lib/libCommBasicObjects.so*

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
	SSH_TARGET=localhost:$TARGET_DIRECTORY/$DEPLOYMENT_DIRECTORY
	echo "Deployment to $SSH_TARGET"
	ssh localhost mkdir -p $TARGET_DIRECTORY/$DEPLOYMENT_DIRECTORY
	
	TMPDIR=$(mktemp -d --suffix=.deployment) || exit 1
	echo "Temporary directory: $TMPDIR"
	trap "rm -rf $TMPDIR" EXIT
	
	# collect files in $TMPDIR
	#rsync -l -r -v --progress --exclude ".svn" $DEPL_FILES $TMPDIR/
	cp -rv $DEPL_FILES $TMPDIR 2>&1
#rsync -l -r -v --progress --exclude ".svn" $DEPLOY_COMPONENT_FILES_PATHS_ComponentLaserObstacleAvoid $TMPDIR/ComponentLaserObstacleAvoid_data/
if [ ! "$DEPLOY_COMPONENT_FILES_PATHS_ComponentLaserObstacleAvoid" = "" ]; then
	cp -rv $DEPLOY_COMPONENT_FILES_PATHS_ComponentLaserObstacleAvoid $TMPDIR/ComponentLaserObstacleAvoid_data/ 2>&1
fi

cp -v $REFERENCED_PROJECT_ComponentLaserObstacleAvoid/smartsoft/src/startstop-hooks.sh $TMPDIR/startstop-hooks-component-ComponentLaserObstacleAvoid.sh 2>/dev/null
#rsync -l -r -v --progress --exclude ".svn" $DEPLOY_COMPONENT_FILES_PATHS_ComponentPlayerStageSimulator $TMPDIR/ComponentPlayerStageSimulator_data/
if [ ! "$DEPLOY_COMPONENT_FILES_PATHS_ComponentPlayerStageSimulator" = "" ]; then
	cp -rv $DEPLOY_COMPONENT_FILES_PATHS_ComponentPlayerStageSimulator $TMPDIR/ComponentPlayerStageSimulator_data/ 2>&1
fi

cp -v $REFERENCED_PROJECT_ComponentPlayerStageSimulator/smartsoft/src/startstop-hooks.sh $TMPDIR/startstop-hooks-component-ComponentPlayerStageSimulator.sh 2>/dev/null
	# actually deploy:
	rsync -z -l -r -v --progress --exclude ".svn" -e ssh $TMPDIR/ $SSH_TARGET
fi


if [ "$?" != "0" ]; then
	echo "ERROR: Files could not be deployed to remote host."
	#gdialog --title ERROR --msgbox "Files could not be deployed host."
	exit 1
fi

echo -e "\n\nDeployment to device PC1 finished.\n\n"
