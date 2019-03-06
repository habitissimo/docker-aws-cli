# docker-aws-cli
![Docker Cloud Automated build](https://img.shields.io/docker/cloud/automated/habitissimo/aws-cli.svg)
![Docker Cloud Build Status](https://img.shields.io/docker/cloud/build/habitissimo/aws-cli.svg)
![Docker Pulls](https://img.shields.io/docker/pulls/habitissimo/aws-cli.svg)
![Docker Stars](https://img.shields.io/docker/stars/habitissimo/aws-cli.svg)

A Docker image that only contains AWS cli tool, useful for Kubernetes jobs.

##  Usage
See [configuration variables](https://github.com/aws/aws-cli#other-configurable-variables)

### Using environment variable configuration
``` bash
docker run --rm \
  -e AWS_ACCESS_KEY_ID=<your-access-key-id> \
  -e AWS_SECRET_ACCESS_KEY=<your-secret-access-key> \
  habitissimo/aws-cli <command>
```

### Using credentials file
Create a file containing your credentials:

```ini
[default]
aws_access_key_id=<your-access-key-id>
aws_secret_access_key=<your-secret-access-key>
```

``` bash
docker run --rm \
  -v $(pwd)/credentials:/root/.aws/config
  -e AWS_CONFIG_FILE=/root/.aws/config \
  habitissimo/aws-cli <command>
```