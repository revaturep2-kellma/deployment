#!/bin/bash

az vm extension set \
  --resource-group kellma \
  --vm-name myVM \
  --name customScript \
  --publisher Microsoft.Azure.Extensions \
  --settings '{"fileUris": ["https://raw.githubusercontent.com/me/project/hello.sh"],"commandToExecute": "./hello.sh"}'