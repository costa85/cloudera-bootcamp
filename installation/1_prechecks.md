**1. Check vm.swappiness on all your nodes**

```
[root@host-10-100-0-97 ~]# cat /proc/sys/vm/swappiness 
60
[root@host-10-100-0-97 ~]# SWP=`grep -ir "vm.swappiness = 1" /etc/sysctl.conf` 
[root@host-10-100-0-97 ~]# echo $SWP
[root@host-10-100-0-97 ~]# if [ $SWP!='' ]; then echo "vm.swappiness = 1" >> /etc/sysctl.conf; fi
[root@host-10-100-0-97 ~]#  cat /proc/sys/vm/swappiness 
1
[root@host-10-100-0-97 ~]#
```

**2. Set noatime on any non-root volumes you have**

**3. Set the reserve space on any non-root volumes to 0**


```
[root@host-10-100-0-97 ~]# mkdir -p /data/01
[root@host-10-100-0-97 ~]# mkfs.ext4 /dev/vdb
[root@host-10-100-0-97 ~]# tune2fs -m 0 /dev/vdb
[root@host-10-100-0-97 ~]# mount /dev/vdb /data/01
[root@host-10-100-0-97 ~]# echo '/dev/vdb /data/01 ext4 noatime 0 0' >> /etc/fstab
[root@host-10-100-0-97 ~]# df -hh
Filesystem      Size  Used Avail Use% Mounted on
/dev/vda1        50G  8,7G   39G  19% /
tmpfs           7,9G     0  7,9G   0% /dev/shm
/dev/vdb         99G   92M   99G   1% /data/01
cm_processes    7,9G  2,3M  7,9G   1% /var/run/cloudera-scm-agent/process
[root@host-10-100-0-97 ~]# grep "/dev/vdb" /etc/fstab
/dev/vdb /data/01 ext4 noatime 0 0
[root@host-10-100-0-97 ~]# 
```

**4. Set the user limits to maximum file descriptors and processes**

```
[root@host-10-100-0-97 ~]# grep "^*" /etc/security/limits.conf 
*          soft     nproc          16384
*          hard     nproc          16384
*          soft     nofile         65535
*          hard     nofile         65535
[root@host-10-100-0-97 ~]# grep "nproc" /etc/security/limits.d/90-nproc.conf 
*          soft    nproc     16384
root       soft    nproc     unlimited
[root@host-10-100-0-97 ~]# ulimit -a
core file size          (blocks, -c) 0
data seg size           (kbytes, -d) unlimited
scheduling priority             (-e) 0
file size               (blocks, -f) unlimited
pending signals                 (-i) 64253
max locked memory       (kbytes, -l) 64
max memory size         (kbytes, -m) unlimited
open files                      (-n) 65535
pipe size            (512 bytes, -p) 8
POSIX message queues     (bytes, -q) 819200
real-time priority              (-r) 0
stack size              (kbytes, -s) 10240
cpu time               (seconds, -t) unlimited
max user processes              (-u) 16384
virtual memory          (kbytes, -v) unlimited
file locks                      (-x) unlimited
```

**5. Test forward and reverse host lookups for correct resolution**

```
[root@host-10-100-0-97 ~]# nslookup host-10-100-0-97
Server:		10.100.0.3
Address:	10.100.0.3#53

Name:	host-10-100-0-97.cisco.com
Address: 10.100.0.97

[root@host-10-100-0-97 ~]# nslookup 10.100.0.97
Server:		10.100.0.3
Address:	10.100.0.3#53

97.0.100.10.in-addr.arpa	name = host-10-100-0-97.cisco.com.
```

**6. Enable the nscd service**

**7. Enable the ntpd service**

```
[root@host-10-100-0-97 ~]# yum install -y ntp nscd
[root@host-10-100-0-97 ~]# chkconfig ntpd on
[root@host-10-100-0-97 ~]# service ntpd start
[root@host-10-100-0-97 ~]# chkconfig nscd on
[root@host-10-100-0-97 ~]# service nscd start
[root@host-10-100-0-97 ~]# service ntpd status
ntpd (pid  1327) is running...
[root@host-10-100-0-97 ~]# service nscd status
nscd (pid 1486) is running...
```

