**How much RAM should be allocated per impalad process, at least?**

At least 16 GB RAM for an Impalad process

**What percentage of RAM should be earmarked for the OS and system services?**

10-20% of RAM for Linux and its daemon services

**Under what condition(s) would you factor two cores per spindle into your calculations?**

If YARN services need more than 2 cores.

**Assume a cluster with 20 vcores, 128 GB RAM, and 10 spindles on each of eight worker nodes.**

Not YARN consumers:
* 10-20% of RAM for Linux and its daemon services - let's take 15%
* At least 16 GB RAM for an Impalad process
* No more than 12-16 GB RAM for an HBase RegionServer process - let-s take 14GB

Calculations:

```
yarn.nodemanager.resource.memory-mb = 128-128*0.15-16-14 = 78.8GB = 80691M
mapreduce.map.memory.mb = 1024M
yarn.nodemanager.resource.cpu-vcores = min(20-6, 2*10) = 14
	(total vcores) – (number of vcores reserved for non-YARN use) = 20-6 = 14 vcores
	2 x (number of physical disks used for DataNode storage) = 2*10 = 20 vcores
mapreduce.map.cpu.vcores = 1
workload factor = 2.0
mapreduce.job.maps = MIN(yarn.nodemanager.resource.memory-mb / mapreduce.map.memory.mb, yarn.nodemanager.resource.cpu-vcores / mapreduce.map.cpu.vcores, number of physical drives x workload factor) x number of worker nodes = MIN(80691/1024, 14/1, 10*2) * 8 = MIN(78.8, 14, 20) * 8 = 14*8 = 112
```

The result is: `mapreduce.job.maps=112`
