# No-IP Dynamic Update Client (DUC)

Update No-IP DNS record automatically.

[Image on Dockerhub](https://hub.docker.com/r/gabay/noip-duc).

## Environment Variables:

* USERNAME - No-IP username. Required. 
* PASSWORD - No-IP password. Required.
* NOIP_CHECK_INTERVAL - How often to check for a new IP address. Minimum: every 2 minutes (default=5m).
* NOIP_HOSTNAMES - Comma separated list of groups and hostnames to update (default=empty)


## Example Usage

Update using user and password:
```
docker run -d  -e USERNAME=<username> -e PASSWORD=<password>
```

Update using a DDNS key:
```
docker run -d  -e USERNAME=<username> -e PASSWORD=<password> -e NOIP_HOSTNAMES=all.ddnskey.com
```

