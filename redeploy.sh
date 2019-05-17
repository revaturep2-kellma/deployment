#!/bin/bash

az vm extension set \
  --resource-group kellma \
  --vm-name kellma-vm-be \
  --name customScript \
  --publisher Microsoft.Azure.Extensions \
  --settings '{"fileUris": ["https://gitcdn.link/repo/revaturep2-kellma/deployment/master/backend.sh"],"commandToExecute": "./backend.sh"}'