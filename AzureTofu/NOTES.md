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

