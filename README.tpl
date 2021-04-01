# Build Tools (PHP, Composer, PHPUnit, Symfony Cli, Yarn and Gulp) Docker image running on Alpine Linux

[![Docker Automated build](https://img.shields.io/docker/automated/maurosoft1973/alpine-build-tools.svg?style=for-the-badge&logo=docker)](https://hub.docker.com/r/maurosoft1973/alpine-build-tools/)
[![Docker Pulls](https://img.shields.io/docker/pulls/maurosoft1973/alpine-build-tools.svg?style=for-the-badge&logo=docker)](https://hub.docker.com/r/maurosoft1973/alpine-build-tools/)
[![Docker Stars](https://img.shields.io/docker/stars/maurosoft1973/alpine-build-tools.svg?style=for-the-badge&logo=docker)](https://hub.docker.com/r/maurosoft1973/alpine-build-tools/)

[![Alpine Version](https://img.shields.io/badge/Alpine%20version-v%ALPINE_VERSION%-green.svg?style=for-the-badge)](https://alpinelinux.org/)

The Docker images [(maurosoft1973/alpine-build-tools)](https://hub.docker.com/r/maurosoft1973/alpine-build-tools/) is based on the minimal [Alpine Linux](https://alpinelinux.org/).

##### Alpine Version %ALPINE_VERSION% (Released %ALPINE_VERSION_DATE%)
##### PHP Version %PHP_VERSION% (Released %PHP_VERSION_DATE%)
##### Composer Version %COMPOSER_VERSION% (Released %COMPOSER_VERSION_DATE%)
##### PHP Unit Version %PHPUNIT_VERSION%
##### Symfony Cli Version %SYMFONY_CLI_VERSION%
##### Yarn Version %YARN_VERSION%
##### Gulp Version %GULP_VERSION%

## Description

To make it easier to use, the image contains the following commands:
- ssh_remote_chmod : is the command used to change the access permissions of file system objects (files and directories).For help and parameter, ssh_remote_chmod -h
- ssh_remote_chown : is the command for change the owner of file system files, directories.For help and parameter, ssh_remote_chown -h
- ssh_remote_command: is the command for executed all bash command.For help and parameter, ssh_remote_command -h
- ssh_remote_mkdir: is the command used to make a new directory.For help and parameter, ssh_remote_mkdir -h
- ssh_remote_rm: is the command user to remove directory.For help and parameter, ssh_remote_rm -h

## Architectures

* ```:amd64```, ```:x86_64``` - 64 bit Intel/AMD (x86_64/amd64)

## Tags

* ```:latest``` latest branch based (Automatic Architecture Selection)
* ```:amd64```, ```:x86_64```  amd64 based on latest tag but amd64 architecture

## Layers & Sizes

![Version](https://img.shields.io/badge/version-amd64-blue.svg?style=for-the-badge)
![MicroBadger Size (tag)](https://img.shields.io/docker/image-size/maurosoft1973/alpine-build-tools?style=for-the-badge)

## Environment Variables:

### Main Build Tools parameters:
* `LC_ALL`: default locale (en_GB.UTF-8)
* `TIMEZONE`: default timezone (Europe/Brussels)
* `WWW_DATA`: directory of source file (Ex /var/www/my-project)

For execution remote command:
* `SSH_SERVER`: remote ssh server ()
* `SSH_PORT`: remote ssh port
* `SSH_USER`: remote ssh user
* `SSH_PASSWORD`: remote ssh password
* `SSH_PRIVATE_KEY`: the ssh private key associate at the user

## Sample Use with gitlab pipeline

```yalm
stages:
    - build

build-test:
    stage: build
    image: maurosoft1973/alpine-build-tools
    variables:
        WWW_DATA: '/var/www/my-project'
    only:
        - master
    script:
        - composer install --optimize-autoloader
        - composer dump-env prod
        - yarn install
        - yarn encode prod
```

***
###### Last Update %LAST_UPDATE%
