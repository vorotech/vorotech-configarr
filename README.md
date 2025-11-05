# vorotech-configarr

Opinionated configuration for my Arr setup.

Tested with Proxmox LXC Configarr container.

https://community-scripts.github.io/ProxmoxVE/scripts?id=configarr

Location of config file

```
/opt/configarr/config.yml
```

## Usage

1. Open a console access to Configarr
2. Checkout this repo to `/tmp`
3. Copy `config/config.yml` file to `/opt/configarr`


## Validation

You can validate your configuration using Docker Compose, which is configured in this repository.

To validate the configuration, simply run:

```bash
make validate-config
```

This will use Docker Compose to run the Configarr validation container with the proper volume mounts and environment settings.

By default, it will validate the configuration file at `config/config.yml`. You can specify a different configuration file by setting the `CONFIG_FILE` variable:

```bash
make validate-config CONFIG_FILE=/path/to/your/config.yml
```

The validation is performed using the official Configarr Docker image with the following settings:
- Debug logging enabled
- Configuration mounted from your local `config` directory
- Debug file creation disabled
