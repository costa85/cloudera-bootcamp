**User UID, kinit, klist and teragen working for my user:**

```
[root@host-10-100-0-97 ~]# id elisska
uid=10000(elisska) gid=501(elisska) groups=501(elisska)
[root@host-10-100-0-97 ~]# kinit -p elisska
Password for elisska@CMRealm: 
[root@host-10-100-0-97 ~]# klist
Ticket cache: FILE:/tmp/krb5cc_0
Default principal: elisska@CMRealm

Valid starting     Expires            Service principal
03/23/16 20:00:21  03/24/16 20:00:21  krbtgt/CMRealm@CMRealm
	renew until 03/30/16 20:00:21
[root@host-10-100-0-97 ~]# yarn jar /opt/cloudera/parcels/CDH/lib/hadoop-mapreduce/hadoop-mapreduce-examples.jar teragen 100000 /user/elisska/teragen-kerberos
16/03/23 20:02:05 INFO hdfs.DFSClient: Created HDFS_DELEGATION_TOKEN token 4 for elisska on ha-hdfs:hdfs
16/03/23 20:02:05 INFO security.TokenCache: Got dt for hdfs://hdfs; Kind: HDFS_DELEGATION_TOKEN, Service: ha-hdfs:hdfs, Ident: (HDFS_DELEGATION_TOKEN token 4 for elisska)
16/03/23 20:02:05 INFO terasort.TeraSort: Generating 100000 using 2
16/03/23 20:02:05 INFO mapreduce.JobSubmitter: number of splits:2
16/03/23 20:02:06 INFO mapreduce.JobSubmitter: Submitting tokens for job: job_1458759931576_0004
16/03/23 20:02:06 INFO mapreduce.JobSubmitter: Kind: HDFS_DELEGATION_TOKEN, Service: ha-hdfs:hdfs, Ident: (HDFS_DELEGATION_TOKEN token 4 for elisska)
16/03/23 20:02:06 INFO impl.YarnClientImpl: Submitted application application_1458759931576_0004
16/03/23 20:02:06 INFO mapreduce.Job: The url to track the job: http://host-10-100-0-103:8088/proxy/application_1458759931576_0004/
16/03/23 20:02:06 INFO mapreduce.Job: Running job: job_1458759931576_0004
16/03/23 20:02:13 INFO mapreduce.Job: Job job_1458759931576_0004 running in uber mode : false
16/03/23 20:02:13 INFO mapreduce.Job:  map 0% reduce 0%
16/03/23 20:02:20 INFO mapreduce.Job:  map 100% reduce 0%
16/03/23 20:02:21 INFO mapreduce.Job: Job job_1458759931576_0004 completed successfully
16/03/23 20:02:21 INFO mapreduce.Job: Counters: 31
	File System Counters
		FILE: Number of bytes read=0
		FILE: Number of bytes written=240232
		FILE: Number of read operations=0
		FILE: Number of large read operations=0
		FILE: Number of write operations=0
		HDFS: Number of bytes read=164
		HDFS: Number of bytes written=10000000
		HDFS: Number of read operations=8
		HDFS: Number of large read operations=0
		HDFS: Number of write operations=4
	Job Counters 
		Launched map tasks=2
		Other local map tasks=2
		Total time spent by all maps in occupied slots (ms)=10220
		Total time spent by all reduces in occupied slots (ms)=0
		Total time spent by all map tasks (ms)=10220
		Total vcore-seconds taken by all map tasks=10220
		Total megabyte-seconds taken by all map tasks=10465280
	Map-Reduce Framework
		Map input records=100000
		Map output records=100000
		Input split bytes=164
		Spilled Records=0
		Failed Shuffles=0
		Merged Map outputs=0
		GC time elapsed (ms)=30
		CPU time spent (ms)=1810
		Physical memory (bytes) snapshot=427610112
		Virtual memory (bytes) snapshot=3140005888
		Total committed heap usage (bytes)=571473920
	org.apache.hadoop.examples.terasort.TeraGen$Counters
		CHECKSUM=214574985129000
	File Input Format Counters 
		Bytes Read=0
	File Output Format Counters 
		Bytes Written=10000000
[root@host-10-100-0-97 ~]#
```
