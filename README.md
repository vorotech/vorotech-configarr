# vorotech-configarr

Opinionated configuration for my Arr setup.

Tested with Proxmox LXC Configarr container.

https://community-scripts.github.io/ProxmoxVE/scripts?id=configarr

Location of config file

```
/opt/configarr/config.yml
```

## Usage

Assuming Proxmox LXC Configarr container

1. (Recommended) Perform configuration backup of Sonarr and Radarr (via Settings)
1. Open a console access to Configarr
2. Checkout this repo to `/tmp`
3. Copy `config/config.yml` file to `/opt/configarr`
4. Apply config changes
   ```
   systemctl start configarr-task
   ```

## Local Testing and Validation

You can test and apply your configuration using Docker Compose, which is configured in this repository.

### Validating Configuration

To validate the configuration without applying changes:

```bash
make config-validate
```

This will run Configarr in dry-run mode, which validates the configuration and shows what changes would be made without actually applying them.

### Applying Configuration

To apply the configuration changes:

```bash
make config-apply
```

This command will run Configarr with `DRY_RUN=false` and actually apply the changes to your Sonarr and Radarr instances.

### Verifying Applied Changes

After applying the configuration, you can verify the changes were applied correctly:

1. Check Sonarr/Radarr logs for any errors
   - Navigate to System > Logs in Sonarr/Radarr web interface
   - Look for entries related to configuration changes

2. Verify specific settings:
   - Quality Profiles: Settings > Profiles
   - Custom Formats: Settings > Custom Formats
   - Media Management: Settings > Media Management
   - Delay Profiles: Settings > Profiles > Delay Profiles

3. Stop the validation environment when done:
   ```bash
   make stop
   ```

Local instances of Sonarr and Radarr for testing:
  - Sonarr: http://localhost:8989
  - Radarr: http://localhost:7878
