# Creating Users
```bash
# Faster way
sudo useradd -m username

# Good for filling more information about that user
sudo adduser username
```

# Giving root privileges to the username
```
sudo usermod -aG sudo username
```


# Removing
```
sudo userdel -r username
```
# Change password
```
sudo passwd username
```