# multiple-machines-ros

Connecting ROS nodes running in different Docker networks. On the same host and over the internet.

## Intro

You have two separate networks (like two different LANs). Each of them contains machines running multiple ROS nodes. To make connection between remote machines possible there need to be bi-directional connectivity between each machine **on all ports**.

If you run ROS nodes in Docker and want to connect your nodes with other nodes running on the same hosts, you would need to run **all** ROS containers with `network_mode: host` option. That is not an elegant solution because you have just lost network namespace isolation between containers and your host.

In this example I will show you how to connect ROS nodes running in different Docker networks on the same host, and over the Internet.

## Debugging

```
docker run --rm -it \
-p 9000:9000 \
-p 9443:9443 \
-v /var/run/docker.sock:/var/run/docker.sock \
-v portainer_data:/data \
portainer/portainer-ce:latest
```

https://localhost:9443