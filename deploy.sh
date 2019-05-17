#!/bin/bash

# Script to create a VM
resource_group=$1
project_name=$2
image=$3
snapshot=$4
custom_data=$5
size=Standard_B1s
admin_username=azureuser

vm_name_be=${project_name}-vm-be
disk_name_be=${project_name}-disk-be

## Create Disk
echo "Creating disk"
az disk create \
  --resource-group "$resource_group" \
  --name "$disk_name_be" \
  --source "$snapshot" \
  --size-gb 10
echo "Disk created"

## Create VM
echo "Creating VM"
az vm create \
  --resource-group "$resource_group" \
  --name "$vm_name_be" \
  --image "$image" \
  --size "$size" \
  --admin-username "$admin_username" \
  --custom-data "$custom_data" \
  --attach-data-disks "$disk_name_be" \
  --generate-ssh-keys
echo "VM created"

## Open VM Port
echo "Opening port"
az vm open-port \
  --port 80 \
  --resource-group "$resource_group" \
  --name "$vm_name_be"
echo "Port opened"
