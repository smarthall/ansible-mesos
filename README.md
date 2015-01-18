# ansible-mesos

## Description
This repository contains Ansible configurations that can be used to bring up
a simple Mesos/Marathon/Chronos cluster. It will create a cluster with a
single master and two slaves.

## Details

### master-1
**Role:** Master

**OS:** CentOS 7

**Apps:** Zookeeper, Mesos, Marathon, Chronos

**IP:** `192.168.77.254`

### slave-1
**Role:** Slave

**OS:** CentOS 7

**Apps:** Mesos, Docker, HAProxy

**IP:** `192.168.77.10`

### slave-2
**Role:** Slave

**OS:** CentOS 7

**Apps:** Mesos, Docker, HAProxy

**IP:** `192.168.77.11`

