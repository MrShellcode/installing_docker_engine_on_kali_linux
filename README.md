## Install Docker Engine on kali linux/debian

### Step 1 :
Before you can install Docker Engine, you need to uninstall any conflicting packages.
Run the following command to uninstall all conflicting packages:

```
$ sudo apt update && apt remove docker.io docker-doc docker-compose docker-compose-v2 podman-docker ontainerd runc
```

### Step 2 :
1.Before you install Docker Engine for the first time on a new host machine, you need to set up the Docker repository. Afterward, you can install and update Docker from the repository.

```
$ sudo apt install curl gpg ca-certificates
$ sudo printf '%s\n' "deb https://download.docker.com/linux/debian bullseye stable" | sudo tee /etc/apt/sources.list.d/docker-ce.list
$ sudo curl -fsSL https://download.docker.com/linux/debian/gpg | sudo gpg --dearmor -o /etc/apt/trusted.gpg.d/docker-ce-archive-keyring.gpg
$ sudo apt update
```
2.Install the Docker packages.
```
sudo apt install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
```


3.Verify that the Docker Engine installation is successful by running the hello-world image.
```
$ sudo docker run hello-world
```