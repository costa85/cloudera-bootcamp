**Teragen command:**

```
[statler@ip-172-31-44-233 ~]$ time yarn jar /opt/cloudera/parcels/CDH/lib/hadoop-mapreduce/hadoop-mapreduce-examples.jar teragen -Ddfs.blocksize=33554432 51200000 tgen
16/03/25 17:37:20 INFO client.RMProxy: Connecting to ResourceManager at ip-172-31-46-70.us-west-2.compute.internal/172.31.46.70:8032
16/03/25 17:37:21 INFO terasort.TeraSort: Generating 51200000 using 2
16/03/25 17:37:21 INFO mapreduce.JobSubmitter: number of splits:2
16/03/25 17:37:21 INFO mapreduce.JobSubmitter: Submitting tokens for job: job_1458926845615_0001
16/03/25 17:37:21 INFO impl.YarnClientImpl: Submitted application application_1458926845615_0001
16/03/25 17:37:21 INFO mapreduce.Job: The url to track the job: http://ip-172-31-46-70.us-west-2.compute.internal:8088/proxy/application_1458926845615_0001/
16/03/25 17:37:21 INFO mapreduce.Job: Running job: job_1458926845615_0001
16/03/25 17:37:30 INFO mapreduce.Job: Job job_1458926845615_0001 running in uber mode : false
16/03/25 17:37:30 INFO mapreduce.Job:  map 0% reduce 0%
[### JOB IN PROGRESS ###]
16/03/25 17:38:30 INFO mapreduce.Job:  map 100% reduce 0%
16/03/25 17:38:30 INFO mapreduce.Job: Job job_1458926845615_0001 completed successfully
16/03/25 17:38:30 INFO mapreduce.Job: Counters: 31
	File System Counters
		FILE: Number of bytes read=0
		FILE: Number of bytes written=230890
		FILE: Number of read operations=0
		FILE: Number of large read operations=0
		FILE: Number of write operations=0
		HDFS: Number of bytes read=170
		HDFS: Number of bytes written=5120000000
		HDFS: Number of read operations=8
		HDFS: Number of large read operations=0
		HDFS: Number of write operations=4
	Job Counters 
		Launched map tasks=2
		Other local map tasks=2
		Total time spent by all maps in occupied slots (ms)=115088
		Total time spent by all reduces in occupied slots (ms)=0
		Total time spent by all map tasks (ms)=115088
		Total vcore-seconds taken by all map tasks=115088
		Total megabyte-seconds taken by all map tasks=117850112
	Map-Reduce Framework
		Map input records=51200000
		Map output records=51200000
		Input split bytes=170
		Spilled Records=0
		Failed Shuffles=0
		Merged Map outputs=0
		GC time elapsed (ms)=533
		CPU time spent (ms)=75060
		Physical memory (bytes) snapshot=345489408
		Virtual memory (bytes) snapshot=3132059648
		Total committed heap usage (bytes)=423100416
	org.apache.hadoop.examples.terasort.TeraGen$Counters
		CHECKSUM=109963291816450258
	File Input Format Counters 
		Bytes Read=0
	File Output Format Counters 
		Bytes Written=5120000000

real	1m12.993s
user	0m6.252s
sys	0m0.819s
```

**Directory on HDFS:**

```
[statler@ip-172-31-44-233 ~]$ hdfs dfs -ls tgen
Found 3 items
-rw-r--r--   3 statler statler          0 2016-03-25 17:38 tgen/_SUCCESS
-rw-r--r--   3 statler statler 2560000000 2016-03-25 17:38 tgen/part-m-00000
-rw-r--r--   3 statler statler 2560000000 2016-03-25 17:38 tgen/part-m-00001
[statler@ip-172-31-44-233 ~]$ 
```
