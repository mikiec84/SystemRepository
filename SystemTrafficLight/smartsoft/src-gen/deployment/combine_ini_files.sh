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

# create subfolder combined-ini-files (if not yet created)
echo "create subfolder src-gen/combined-ini-files"
mkdir -p src-gen/combined-ini-files

# clean-up old combined-ini-files before they are generated again
echo "clean-up src-gen/combined-ini-files subfolder"
rm src-gen/combined-ini-files/*.ini

# create ini-file ComponentTrafficLightTest.ini
echo "create ini-file ComponentTrafficLightTest.ini"
cp src-gen/system/ComponentTrafficLightTest.ini src-gen/combined-ini-files/
if [ -f src-gen/params/ComponentTrafficLightTest.ini ]; then
  cat src-gen/params/ComponentTrafficLightTest.ini >> src-gen/combined-ini-files/ComponentTrafficLightTest.ini
fi

