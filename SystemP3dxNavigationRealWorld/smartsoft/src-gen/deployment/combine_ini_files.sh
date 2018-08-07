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
# This script collects the generated ini-file parts and combines them into single ini-files (one for each component artefact)
#

# create ini-file SmartCdlServer.ini
echo "create ini-file SmartCdlServer.ini"
cp src-gen/system/SmartCdlServer.ini src-gen/deployment/
cat src-gen/params/SmartCdlServer.ini >> src-gen/deployment/SmartCdlServer.ini

# create ini-file SmartLaserLMS200Server.ini
echo "create ini-file SmartLaserLMS200Server.ini"
cp src-gen/system/SmartLaserLMS200Server.ini src-gen/deployment/
cat src-gen/params/SmartLaserLMS200Server.ini >> src-gen/deployment/SmartLaserLMS200Server.ini

# create ini-file SmartMapperGridMap.ini
echo "create ini-file SmartMapperGridMap.ini"
cp src-gen/system/SmartMapperGridMap.ini src-gen/deployment/
cat src-gen/params/SmartMapperGridMap.ini >> src-gen/deployment/SmartMapperGridMap.ini

# create ini-file SmartPioneerBaseServer.ini
echo "create ini-file SmartPioneerBaseServer.ini"
cp src-gen/system/SmartPioneerBaseServer.ini src-gen/deployment/
cat src-gen/params/SmartPioneerBaseServer.ini >> src-gen/deployment/SmartPioneerBaseServer.ini

# create ini-file SmartPlannerBreadthFirstSearch.ini
echo "create ini-file SmartPlannerBreadthFirstSearch.ini"
cp src-gen/system/SmartPlannerBreadthFirstSearch.ini src-gen/deployment/
cat src-gen/params/SmartPlannerBreadthFirstSearch.ini >> src-gen/deployment/SmartPlannerBreadthFirstSearch.ini

# create ini-file SmartRobotConsole.ini
echo "create ini-file SmartRobotConsole.ini"
cp src-gen/system/SmartRobotConsole.ini src-gen/deployment/
cat src-gen/params/SmartRobotConsole.ini >> src-gen/deployment/SmartRobotConsole.ini
