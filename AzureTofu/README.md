# Azure Tofu Development Image

## Prerequsites
- WSL installed
- Docker installed in WSL
- Azure account set up
- Azure service principal created
## Docker Command

```
docker run -it -v /home/ubuntu/.ssh:/home/ubuntu/.ssh -v /var/run/docker.sock:/var/run/docker.sock -v $(pwd):/working --env-file=$(read -p "enter env file")  -p 22:2222 -p 443:8443  -w ${pwd} --rm   --name azure-cli --hostname azure-dev azure-development-image bash
```
## Notes
az login

az ad sp create-for-rbac --name "cae-azure-development" --role "Contributor" --scopes "/subscriptions/75bf03eb-c0b4-4f04-b861-3bd122a1de7f"


{
  "appId": "4e456c18-f6af-4f95-9212-fd625c7acab0",
  "displayName": "cae-azure-development",
  "password": "TE_8Q~f2cSTYYwvbGWGjYzupHMLTN.J1MoeApcof",
  "tenant": "c9739f94-aeaa-44c2-9360-984728ebfa3e"
}

az login --service-principal --username <appId> --password <password> --tenant <tenantId>
