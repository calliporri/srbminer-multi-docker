# SRBMiner-Multi-Docker

Docker containing newest SRBMiner-Multi 2.6.9

Download:<br/>
https://boredmates.de/srbminer<br/>
https://hub.docker.com/r/boredmates/srbminer-multi-docker

SRBMiner-Multi is a cryptocurrency miner with CPU and AMD & NVIDIA & INTEL GPU support. You can mine up to 4 different algorithms/coins at the same time.

With this image, you can launch SRBMiner-Multi in a Docker or Podman container. The container can easily run on your local computer
using standard Docker commands or in a Kubernetes environment.
It allows you to mine locally for a pool and receive different cryptocurrency coins for your efforts.

We are not the developers of SRBMiner-Multi, just provide this dockerized image of it, credits go to the great work from doktor83

## Getting Started

Pull this Docker image:

```bash
docker pull boredmates/srbminer-multi-docker
```

Start mining:

```bash
docker run --rm -it --name=my-srbminer boredmates/srbminer-multi-docker
```

Give it a try and you should see a container starting and firing up mining to a pool.
With this basic configuration, without any options, you will mine for us (three nice guys), which is a way to support our efforts. Consider letting it run for an hour or a day ;) We will keep this image up to date with changes to SRBMiner-Multi.

## Stopping container

Press `CTRL+C` to stop the container, and it will be automatically removed. Alternatively, control your containers with Docker Desktop: https://www.docker.com/products/docker-desktop/

## Custom Configuration

In order to provide your own configuration, start the container with extra parameters:

```bash
docker run --rm -it --name=my-srbminer srbminer-multi-docker 
--algorithm randomx \
--pool fr-zephyr.miningocean.org:5342 \
--wallet ZEPHYR2efUaEbchEZGVhgW63veURr9s4BTQJEpCUCvKfSFgqfV4mrb4cKwL2JxkufffAZ5LfgVE7sfpoSX79wYueZryzpNNdPCx2A \
--password x \
--cpu-threads-priority 4 \
--cpu-threads 2
```

The parameters should be self-explanatory, but for a reference:

| **Parameter** | **Description** | **Example value** |
|---|---|---|
| --algorithm | One or more algorithms you want to mine. | randomx |
| --pool | URL and the port of the pool you want to use, most pools have a Getting Started page with this information. | fr-zephyr.miningocean.org:5342 |
| --wallet | Wallet address you want to mine to at the pool. | ZEPHYR2efUaEbchEZGVhgW63veURr9s4BTQJ... |
| --password | Password, or at some pools used as the worker name for the pool dashboard | x |
| --cpu-threads-priority |  Number between 1 (idle) and 5 (highest) of the CPU process priority, default is 2  | 4 |
| --cpu-threads |  Number of threads to use on the CPU | 2 |

The compact version of the same is:
```bash
docker run --rm -it --name=my-srbminer srbminer-multi-docker -o fr-zephyr.miningocean.org:5342 -a randomx -u ZEPHYR2efUaEbchEZGVhgW63veURr9s4BTQJEpCUCvKfSFgqfV4mrb4cKwL2JxkufffAZ5LfgVE7sfpoSX79wYueZryzpNNdPCx2A -p x --cpu-threads-priority 4 --cpu-threads 2
```

We recommend taking a look at the full documentation at SRBMiner-Multi's Github itself, it has all relevant information about coins and parameters:<br/>
https://github.com/doktor83/SRBMiner-Multi<br/>
Parameters:<br/>
https://github.com/doktor83/SRBMiner-Multi/blob/master/Parameters<br/>

If you have questions, feel free to reach out to us at info@boredmates.com
