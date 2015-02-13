# ansible-mesos

## Description
This repository contains Ansible configurations that can be used to bring up
a simple Mesos/Marathon/Chronos cluster. It will create a cluster with a
single master and two slaves.

## Instructions
You can start the cluster with the following commands:

    vagrant up
    ./init-cluster.sh

This will start the three Vagrant machines, install a mesos cluster on them,
and install two sample Marathon apps, and a smaple Chronos app. This will take
a long time if it is the first time you have run it as it will have to
download the vm images, the packages and the docker images.

The `./init-cluster.sh` script will add all the files in `task-data/marathon`
to Marathon on the master and all the files in `task-data/chronos` to Chronos.
You can use the existing files in these directories as templates for your own
Marathon and chronos services.

## Details

### master-1
- **Role:** Master
- **OS:** CentOS 7
- **Apps:** Zookeeper, [Mesos](http://192.168.77.254:5050/), [Marathon](http://192.168.77.254:8080/), [Chronos](http://192.168.77.254:4400/)
- **IP:** `192.168.77.254`

### slave-1
- **Role:** Slave
- **OS:** CentOS 7
- **Apps:** Mesos, Docker, [HAProxy](http://192.168.77.10:9090/)
- **IP:** `192.168.77.10`

### slave-2
- **Role:** Slave
- **OS:** CentOS 7
- **Apps:** Mesos, Docker, [HAProxy](http://192.168.77.11:9090/)
- **IP:** `192.168.77.11`

