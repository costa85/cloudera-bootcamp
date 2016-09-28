**Setup:**
  * 5 nodes of Centos 6.5, AMI _CentOS-6.5-GA-03.3-f4325b48-37b0-405a-9847-236c64622e3e-ami-6be4dc02.2_, region _us-west-2a_
  * Node to host Cloudera Manager server: `ip-172-31-44-233.us-west-2.compute.internal.`
  * Utility node uptime:
  
  ```
  [root@ip-172-31-44-233 ~]# uptime
  15:58:10 up 45 min,  1 user,  load average: 0.00, 0.00, 0.00
  ```
  
**No hadoop binaries and df -h :**
  
```
[root@ip-172-31-44-155 ~]# hadoop fs -ls /
-bash: hadoop: command not found
[root@ip-172-31-44-155 ~]# df -h
Filesystem      Size  Used Avail Use% Mounted on
/dev/xvde        30G  703M   28G   3% /
tmpfs           7,4G     0  7,4G   0% /dev/shm
/dev/xvdf        37G  176M   37G   1% /data/01
/dev/xvdg        37G  176M   37G   1% /data/02
[root@ip-172-31-44-155 ~]#
```
  
**Created users (on all nodes but shown only on utility node):**
  
```
[root@ip-172-31-46-70 ~]# egrep "statler|waldorf" /etc/passwd 
statler:x:2001:2001::/home/statler:/bin/bash
waldorf:x:2002:2002::/home/waldorf:/bin/bash
```
