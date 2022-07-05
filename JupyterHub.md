# JupyterHub with pip and npm

[https://github.com/jupyterhub/jupyterhub](https://github.com/jupyterhub/jupyterhub)

[https://jupyterhub.readthedocs.io/en/stable/quickstart.html](https://jupyterhub.readthedocs.io/en/stable/quickstart.html)

[https://towardsdatascience.com/setup-your-home-jupyterhub-on-a-raspberry-pi-7ad32e20eed](https://towardsdatascience.com/setup-your-home-jupyterhub-on-a-raspberry-pi-7ad32e20eed)

```bash
sudo apt update
sudo apt upgrade
sudo apt autoremove
```

## Installing Python3, Pip and npm
```bash
sudo apt install python3
sudo apt install python3-pip 
sudo apt install npm
```

## Install the http proxy and jupyterhub
```bash
sudo npm install -g configurable-http-proxy
sudo python3 -m pip install jupyterhub
sudo python3 -m pip install --upgrade jupyterlab
```

## Generate the configuration file
```bash
jupyterhub --generate-config
```

## Test the installation
```bash
sudo jupyterhub --ip xxx.xxx.xxx.xxx --port xxxx
```

## Adds the URL and users to configuration file
```bash
c.JupyterHub.bind_url = "http://xxx.xxx.xxx.xxx:xxxx"

# Users
c.Authenticator.allowed_users = {'x', 'y', 'z'}

# Admin
c.Authenticator.admin_users = {"x", "y"}`
```

## Execute the JupyterHub
```bash
sudo jupyterhub -f jupyterhub_config.py
```
