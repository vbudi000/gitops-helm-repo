#!/bin/bash
#################################################################
# (C) Copyright 2019-2021 Syncsort Incorporated. All rights reserved.
#################################################################
#
# You need to run this script once prior to installing the chart.
#

. ../../common/kubhelper.sh

isApplied="false"
if supports_scc; then
  # Create the custom SCC for OpenShift
  echo "Creating SecurityContextConstraints and ClusterRole..."
  oc apply -f ibm-pem-scc.yaml --validate=false
  oc apply -f ibm-pem-cr-scc.yaml --validate=false
  isApplied=true
fi

if supports_psp; then
  # Create the PodSecurityPolicy and ClusterRole for all releases of this chart.
  if [ "$isApplied" == "false" ]; then
   echo "Creating the PodSecurityPolicy..."
   kubectl apply -f ibm-pem-psp.yaml
   kubectl apply -f ibm-pem-cr.yaml
  fi
fi
