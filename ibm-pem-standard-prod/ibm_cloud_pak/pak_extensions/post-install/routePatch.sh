#!/bin/bash
#################################################################
# (C) Copyright 2019-2021 Syncsort Incorporated. All rights reserved.
#################################################################
#
# You need to run this script once after installing the chart.
#

RELEASE_NAME= #Provide the release name
PEM_DEST_CABUNDLE_FN= #Provide the Destination CA certificate name with path for PEM server
PR_DEST_CABUNDLE_FN= #Provide the Destination CA certificate name with path for PR server
PP_DEST_CABUNDLE_FN= #Provide the Destination CA certificate name with path for PP server
AG_DEST_CABUNDLE_FN= #Provide the Destination CA certificate name with path for API Gateway server

PEM_DEST_CABUNDLE="$(awk 'NF {sub(/\r/, ""); printf "%s\\n",$0;}' ${PEM_DEST_CABUNDLE_FN})"
PR_DEST_CABUNDLE="$(awk 'NF {sub(/\r/, ""); printf "%s\\n",$0;}' ${PR_DEST_CABUNDLE_FN})"
PP_DEST_CABUNDLE="$(awk 'NF {sub(/\r/, ""); printf "%s\\n",$0;}' ${PP_DEST_CABUNDLE_FN})"
AG_DEST_CABUNDLE="$(awk 'NF {sub(/\r/, ""); printf "%s\\n",$0;}' ${AG_DEST_CABUNDLE_FN})"

oc patch route ${RELEASE_NAME}-pem-route -p '{"spec":{"tls":{"destinationCACertificate":"'"${PEM_DEST_CABUNDLE}"'"}}}'
oc patch route ${RELEASE_NAME}-pr-route -p '{"spec":{"tls":{"destinationCACertificate":"'"${PR_DEST_CABUNDLE}"'"}}}'
oc patch route ${RELEASE_NAME}-pp-route -p '{"spec":{"tls":{"destinationCACertificate":"'"${PP_DEST_CABUNDLE}"'"}}}'
oc patch route ${RELEASE_NAME}-gateway-route -p '{"spec":{"tls":{"destinationCACertificate":"'"${AG_DEST_CABUNDLE}"'"}}}'
