# Squid-Docker
A minimal Squid proxy with authentication, based on the `ubuntu/squid` image.

## Default Credentials
- **Username:** `squid`
- **Password:** `squid`

## Adding a New User
You can add a new user by updating the `passwd` file using one of the following methods:

### From the Host Machine
Run the following command to add a new user to the `passwd` file:
```sh
htpasswd -mb ./config/passwd "USERNAME" "PASSWORD"
```

### Using the Docker Container
To add a new user from within the running Docker container, use:
```sh
docker-compose exec app /bin/bash -c "htpasswd -mb /etc/squid/passwd 'USERNAME' 'PASSWORD'"
```
