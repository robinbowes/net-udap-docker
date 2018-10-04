# net-udap docker

Run [net-udap](https://github.com/robinbowes/net-udap) in a docker container

## Overview

Some years ago, I wrote a tool ([net-udap](https://github.com/robinbowes/net-udap)) to configure [Slim Devices](https://web.archive.org/web/20080118034533/http://www.slimdevices.com:80/index.html) Squeezebox [Receivers](https://web.archive.org/web/20080120005346/http://www.slimdevices.com:80/pi_receiver.html) without the accompanying [Controller](https://web.archive.org/web/20080120005025/http://www.slimdevices.com:80/pi_controller.html).

I still get people asking about it, and still get the odd paypal donation from satisfied users (really!).

However, it's never worked well on Windows machines - mostly due to the difficulty in installing some of the perl modules used by the tool.

This is an attempt to run net-udap in a docker container in the hope that it will function on any platform that supports docker.

## Prerequisites

* [docker](https://www.docker.com/)

## Getting started

1. Download the `Dockerfile` from this repository.

1. Build the docker image:

    Run this command from within the same directory as the `Dockerfile`
    ```bash
    docker build -t net-udap .
    ```

1. Create the container:

    Run this command:
    ```bash
    docker create -it --name=net-udap --network host net-udap
    ```

1. Run net-udap in the container:

    Run this command:
    ```bash
    docker start -ai net-udap
    ```

    You should land at the `net-udap` `UDAP>` prompt, from where you can follow the regular [usage instructions](https://github.com/robinbowes/net-udap/wiki/Using-the-software).

    Note: you can combine the preceding two commands with the `docker run` command:
    ```bash
    docker run -it --name net-udap --network host net-udap
    ```

    When you exit `net-udap` the docker container is stopped. If you want to use it again, simply start it again using the `docker start` command.

1. Delete the container

    ```bash
    docker rm net-udap
    ```
