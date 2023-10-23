#echo "" > 03-storage.json
#echo "" > 03-storage.parameters-dev.json
#echo "" > 03-storage.parameters-prod.json

#Create Resource Group variable per env
group = 'arm-parameter-files-dev'

az group create -g $group -l eastus

az group deploy create \
    -g $group\
    --template-file 03-storage.json \
    --parameters @03-wstroage.parameters-dev.json

#Create Resource Group variable per env
group = 'arm-parameter-files-prod'

az group create -g $group -l eastus

az group deploy create \
    -g $group\
    --template-file \
    --parameters @03-wstroage.parameters-prod.json