#!/bin/bash
  
# Start GCP instance
/Users/mmakwana/scripts/gcp/google-cloud-sdk/bin/gcloud compute instances start instance-1

# Get the External IP
IP="$(/Users/mmakwana/scripts/gcp/google-cloud-sdk/bin/gcloud --format='value(networkInterfaces[0].accessConfigs[0].natIP)' compute instances list)"

# RDP file location
rdpFile="/Users/mmakwana/scripts/instance-1.rdp"

#Modify the .rdp file with the latest public IP addres that we got at line 7
sed -i ""  "s|^full address.*|full address:s:${IP}|g" ${rdpFile}

#Open finder with the rdp file location
open -R ${rdpFile}

#############################
# RDP command for furture use
# Furture improvements: script should automatically start the RDP
# Another improvement is to embedded passowrd in the RDP file so I dont have to type the password
# src : https://serverfault.com/questions/867467/rdp-file-with-embedded-password-asks-for-password
rdpRunCommand="/Applications/Microsoft Remote Desktop.localized/Microsoft Remote Desktop.app/Contents/MacOS/Microsoft Remote Desktop"
