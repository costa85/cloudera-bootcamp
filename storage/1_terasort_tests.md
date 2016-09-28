**RESULTS:**

With dfs.client.read.shortcircuit=false: 

```
real	1m18.534s
user	1m10.999s
sys	0m8.935s
```
With dfs.client.read.shortcircuit=true: 

```
real	0m38.892s
user	0m5.640s
sys	0m0.281s
```

Full listing is below:

**First terasort run - dfs.client.read.shortcircuit=false**

```
[cloud-user@host-10-100-0-97 ~]$ hdfs getconf -confKey dfs.client.read.shortcircuit
false
[cloud-user@host-10-100-0-97 ~]$ time yarn jar /opt/cloudera/parcels/CDH/lib/hadoop-mapreduce/hadoop-mapreduce-examples.jar terasort /user/cloud-user/teragen-elisska /user/cloud-user/terasort-elisska
16/03/22 19:07:51 INFO terasort.TeraSort: starting
16/03/22 19:07:52 INFO input.FileInputFormat: Total input paths to process : 1
Spent 108ms computing base-splits.
Spent 2ms computing TeraScheduler splits.
Computing input splits took 110ms
Sampling 8 splits of 8
Making 1 from 100000 sampled records
Computing parititions took 2572ms
Spent 2684ms computing partitions.
16/03/22 19:07:55 INFO Configuration.deprecation: session.id is deprecated. Instead, use dfs.metrics.session-id
16/03/22 19:07:55 INFO jvm.JvmMetrics: Initializing JVM Metrics with processName=JobTracker, sessionId=
16/03/22 19:07:55 INFO mapreduce.JobSubmitter: number of splits:8
16/03/22 19:07:55 INFO mapreduce.JobSubmitter: Submitting tokens for job: job_local229200699_0001
16/03/22 19:07:55 INFO mapred.LocalDistributedCacheManager: Creating symlink: /tmp/hadoop-cloud-user/mapred/local/1458673675585/_partition.lst <- /home/cloud-user/_partition.lst
16/03/22 19:07:55 INFO mapred.LocalDistributedCacheManager: Localized hdfs://hdfs/user/cloud-user/terasort-elisska/_partition.lst as file:/tmp/hadoop-cloud-user/mapred/local/1458673675585/_partition.lst
16/03/22 19:07:55 INFO mapreduce.Job: The url to track the job: http://localhost:8080/
16/03/22 19:07:55 INFO mapreduce.Job: Running job: job_local229200699_0001
16/03/22 19:07:55 INFO mapred.LocalJobRunner: OutputCommitter set in config null
16/03/22 19:07:55 INFO output.FileOutputCommitter: File Output Committer Algorithm version is 1
16/03/22 19:07:55 INFO mapred.LocalJobRunner: OutputCommitter is org.apache.hadoop.mapreduce.lib.output.FileOutputCommitter
16/03/22 19:07:55 INFO mapred.LocalJobRunner: Waiting for map tasks
16/03/22 19:07:55 INFO mapred.LocalJobRunner: Starting task: attempt_local229200699_0001_m_000000_0
16/03/22 19:07:55 INFO output.FileOutputCommitter: File Output Committer Algorithm version is 1
16/03/22 19:07:55 INFO mapred.Task:  Using ResourceCalculatorProcessTree : [ ]
16/03/22 19:07:55 INFO mapred.MapTask: Processing split: hdfs://hdfs/user/cloud-user/teragen-elisska/part-m-00000:0+134217728
16/03/22 19:07:55 INFO mapred.MapTask: (EQUATOR) 0 kvi 26214396(104857584)
16/03/22 19:07:55 INFO mapred.MapTask: mapreduce.task.io.sort.mb: 100
16/03/22 19:07:55 INFO mapred.MapTask: soft limit at 83886080
16/03/22 19:07:55 INFO mapred.MapTask: bufstart = 0; bufvoid = 104857600
16/03/22 19:07:55 INFO mapred.MapTask: kvstart = 26214396; length = 6553600
16/03/22 19:07:55 INFO mapred.MapTask: Map output collector class = org.apache.hadoop.mapred.MapTask$MapOutputBuffer
16/03/22 19:07:56 INFO mapred.MapTask: Spilling map output
16/03/22 19:07:56 INFO mapred.MapTask: bufstart = 0; bufend = 72511698; bufvoid = 104857600
16/03/22 19:07:56 INFO mapred.MapTask: kvstart = 26214396(104857584); kvend = 23370804(93483216); length = 2843593/6553600
16/03/22 19:07:56 INFO mapred.MapTask: (EQUATOR) 75355282 kvi 18838816(75355264)
16/03/22 19:07:56 INFO mapreduce.Job: Job job_local229200699_0001 running in uber mode : false
16/03/22 19:07:56 INFO mapreduce.Job:  map 0% reduce 0%
16/03/22 19:07:58 INFO mapred.MapTask: Finished spill 0
16/03/22 19:07:58 INFO mapred.MapTask: (RESET) equator 75355282 kv 18838816(75355264) kvi 18127932(72511728)
16/03/22 19:07:58 INFO mapred.LocalJobRunner: 
16/03/22 19:07:58 INFO mapred.MapTask: Starting flush of map output
16/03/22 19:07:58 INFO mapred.MapTask: Spilling map output
16/03/22 19:07:58 INFO mapred.MapTask: bufstart = 75355282; bufend = 34888140; bufvoid = 104857600
16/03/22 19:07:58 INFO mapred.MapTask: kvstart = 18838816(75355264); kvend = 16313704(65254816); length = 2525113/6553600
16/03/22 19:08:00 INFO mapred.MapTask: Finished spill 1
16/03/22 19:08:00 INFO mapred.Merger: Merging 2 sorted segments
16/03/22 19:08:00 INFO mapred.Merger: Down to the last merge-pass, with 2 segments left of total size: 139586498 bytes
16/03/22 19:08:01 INFO mapred.LocalJobRunner: map > sort > 
16/03/22 19:08:02 INFO mapred.Task: Task:attempt_local229200699_0001_m_000000_0 is done. And is in the process of committing
16/03/22 19:08:02 INFO mapred.LocalJobRunner: map > sort
16/03/22 19:08:02 INFO mapred.Task: Task 'attempt_local229200699_0001_m_000000_0' done.
16/03/22 19:08:02 INFO mapred.LocalJobRunner: Finishing task: attempt_local229200699_0001_m_000000_0
16/03/22 19:08:02 INFO mapred.LocalJobRunner: Starting task: attempt_local229200699_0001_m_000001_0
16/03/22 19:08:02 INFO output.FileOutputCommitter: File Output Committer Algorithm version is 1
16/03/22 19:08:02 INFO mapred.Task:  Using ResourceCalculatorProcessTree : [ ]
16/03/22 19:08:02 INFO mapred.MapTask: Processing split: hdfs://hdfs/user/cloud-user/teragen-elisska/part-m-00000:134217728+134217728
16/03/22 19:08:02 INFO mapred.MapTask: (EQUATOR) 0 kvi 26214396(104857584)
16/03/22 19:08:02 INFO mapred.MapTask: mapreduce.task.io.sort.mb: 100
16/03/22 19:08:02 INFO mapred.MapTask: soft limit at 83886080
16/03/22 19:08:02 INFO mapred.MapTask: bufstart = 0; bufvoid = 104857600
16/03/22 19:08:02 INFO mapred.MapTask: kvstart = 26214396; length = 6553600
16/03/22 19:08:02 INFO mapred.MapTask: Map output collector class = org.apache.hadoop.mapred.MapTask$MapOutputBuffer
16/03/22 19:08:02 INFO mapreduce.Job:  map 100% reduce 0%
16/03/22 19:08:02 INFO mapred.MapTask: Spilling map output
16/03/22 19:08:02 INFO mapred.MapTask: bufstart = 0; bufend = 72511698; bufvoid = 104857600
16/03/22 19:08:02 INFO mapred.MapTask: kvstart = 26214396(104857584); kvend = 23370804(93483216); length = 2843593/6553600
16/03/22 19:08:02 INFO mapred.MapTask: (EQUATOR) 75355282 kvi 18838816(75355264)
16/03/22 19:08:04 INFO mapred.MapTask: Finished spill 0
16/03/22 19:08:04 INFO mapred.MapTask: (RESET) equator 75355282 kv 18838816(75355264) kvi 18127932(72511728)
16/03/22 19:08:04 INFO mapred.LocalJobRunner: 
16/03/22 19:08:04 INFO mapred.MapTask: Starting flush of map output
16/03/22 19:08:04 INFO mapred.MapTask: Spilling map output
16/03/22 19:08:04 INFO mapred.MapTask: bufstart = 75355282; bufend = 34888038; bufvoid = 104857600
16/03/22 19:08:04 INFO mapred.MapTask: kvstart = 18838816(75355264); kvend = 16313708(65254832); length = 2525109/6553600
16/03/22 19:08:04 INFO mapreduce.Job:  map 13% reduce 0%
16/03/22 19:08:06 INFO mapred.MapTask: Finished spill 1
16/03/22 19:08:06 INFO mapred.Merger: Merging 2 sorted segments
16/03/22 19:08:06 INFO mapred.Merger: Down to the last merge-pass, with 2 segments left of total size: 139586394 bytes
16/03/22 19:08:08 INFO mapred.Task: Task:attempt_local229200699_0001_m_000001_0 is done. And is in the process of committing
16/03/22 19:08:08 INFO mapred.LocalJobRunner: map > sort
16/03/22 19:08:08 INFO mapred.Task: Task 'attempt_local229200699_0001_m_000001_0' done.
16/03/22 19:08:08 INFO mapred.LocalJobRunner: Finishing task: attempt_local229200699_0001_m_000001_0
16/03/22 19:08:08 INFO mapred.LocalJobRunner: Starting task: attempt_local229200699_0001_m_000002_0
16/03/22 19:08:08 INFO output.FileOutputCommitter: File Output Committer Algorithm version is 1
16/03/22 19:08:08 INFO mapred.Task:  Using ResourceCalculatorProcessTree : [ ]
16/03/22 19:08:08 INFO mapred.MapTask: Processing split: hdfs://hdfs/user/cloud-user/teragen-elisska/part-m-00000:268435456+134217728
16/03/22 19:08:08 INFO mapred.MapTask: (EQUATOR) 0 kvi 26214396(104857584)
16/03/22 19:08:08 INFO mapred.MapTask: mapreduce.task.io.sort.mb: 100
16/03/22 19:08:08 INFO mapred.MapTask: soft limit at 83886080
16/03/22 19:08:08 INFO mapred.MapTask: bufstart = 0; bufvoid = 104857600
16/03/22 19:08:08 INFO mapred.MapTask: kvstart = 26214396; length = 6553600
16/03/22 19:08:08 INFO mapred.MapTask: Map output collector class = org.apache.hadoop.mapred.MapTask$MapOutputBuffer
16/03/22 19:08:08 INFO mapred.MapTask: Spilling map output
16/03/22 19:08:08 INFO mapred.MapTask: bufstart = 0; bufend = 72511698; bufvoid = 104857600
16/03/22 19:08:08 INFO mapred.MapTask: kvstart = 26214396(104857584); kvend = 23370804(93483216); length = 2843593/6553600
16/03/22 19:08:08 INFO mapred.MapTask: (EQUATOR) 75355282 kvi 18838816(75355264)
16/03/22 19:08:08 INFO mapreduce.Job:  map 100% reduce 0%
16/03/22 19:08:10 INFO mapred.MapTask: Finished spill 0
16/03/22 19:08:10 INFO mapred.MapTask: (RESET) equator 75355282 kv 18838816(75355264) kvi 18127932(72511728)
16/03/22 19:08:10 INFO mapred.LocalJobRunner: 
16/03/22 19:08:10 INFO mapred.MapTask: Starting flush of map output
16/03/22 19:08:10 INFO mapred.MapTask: Spilling map output
16/03/22 19:08:10 INFO mapred.MapTask: bufstart = 75355282; bufend = 34888038; bufvoid = 104857600
16/03/22 19:08:10 INFO mapred.MapTask: kvstart = 18838816(75355264); kvend = 16313708(65254832); length = 2525109/6553600
16/03/22 19:08:10 INFO mapreduce.Job:  map 25% reduce 0%
16/03/22 19:08:12 INFO mapred.MapTask: Finished spill 1
16/03/22 19:08:12 INFO mapred.Merger: Merging 2 sorted segments
16/03/22 19:08:12 INFO mapred.Merger: Down to the last merge-pass, with 2 segments left of total size: 139586394 bytes
16/03/22 19:08:13 INFO mapred.Task: Task:attempt_local229200699_0001_m_000002_0 is done. And is in the process of committing
16/03/22 19:08:13 INFO mapred.LocalJobRunner: map > sort
16/03/22 19:08:13 INFO mapred.Task: Task 'attempt_local229200699_0001_m_000002_0' done.
16/03/22 19:08:13 INFO mapred.LocalJobRunner: Finishing task: attempt_local229200699_0001_m_000002_0
16/03/22 19:08:13 INFO mapred.LocalJobRunner: Starting task: attempt_local229200699_0001_m_000003_0
16/03/22 19:08:13 INFO output.FileOutputCommitter: File Output Committer Algorithm version is 1
16/03/22 19:08:13 INFO mapred.Task:  Using ResourceCalculatorProcessTree : [ ]
16/03/22 19:08:13 INFO mapred.MapTask: Processing split: hdfs://hdfs/user/cloud-user/teragen-elisska/part-m-00000:402653184+134217728
16/03/22 19:08:13 INFO mapred.MapTask: (EQUATOR) 0 kvi 26214396(104857584)
16/03/22 19:08:13 INFO mapred.MapTask: mapreduce.task.io.sort.mb: 100
16/03/22 19:08:13 INFO mapred.MapTask: soft limit at 83886080
16/03/22 19:08:13 INFO mapred.MapTask: bufstart = 0; bufvoid = 104857600
16/03/22 19:08:13 INFO mapred.MapTask: kvstart = 26214396; length = 6553600
16/03/22 19:08:13 INFO mapred.MapTask: Map output collector class = org.apache.hadoop.mapred.MapTask$MapOutputBuffer
16/03/22 19:08:14 INFO mapred.MapTask: Spilling map output
16/03/22 19:08:14 INFO mapred.MapTask: bufstart = 0; bufend = 72511698; bufvoid = 104857600
16/03/22 19:08:14 INFO mapred.MapTask: kvstart = 26214396(104857584); kvend = 23370804(93483216); length = 2843593/6553600
16/03/22 19:08:14 INFO mapred.MapTask: (EQUATOR) 75355282 kvi 18838816(75355264)
16/03/22 19:08:14 INFO mapreduce.Job:  map 100% reduce 0%
16/03/22 19:08:16 INFO mapred.MapTask: Finished spill 0
16/03/22 19:08:16 INFO mapred.MapTask: (RESET) equator 75355282 kv 18838816(75355264) kvi 18127932(72511728)
16/03/22 19:08:16 INFO mapred.LocalJobRunner: 
16/03/22 19:08:16 INFO mapred.MapTask: Starting flush of map output
16/03/22 19:08:16 INFO mapred.MapTask: Spilling map output
16/03/22 19:08:16 INFO mapred.MapTask: bufstart = 75355282; bufend = 34888140; bufvoid = 104857600
16/03/22 19:08:16 INFO mapred.MapTask: kvstart = 18838816(75355264); kvend = 16313704(65254816); length = 2525113/6553600
16/03/22 19:08:17 INFO mapreduce.Job:  map 38% reduce 0%
16/03/22 19:08:18 INFO mapred.MapTask: Finished spill 1
16/03/22 19:08:18 INFO mapred.Merger: Merging 2 sorted segments
16/03/22 19:08:18 INFO mapred.Merger: Down to the last merge-pass, with 2 segments left of total size: 139586498 bytes
16/03/22 19:08:19 INFO mapred.LocalJobRunner: map > sort > 
16/03/22 19:08:20 INFO mapred.Task: Task:attempt_local229200699_0001_m_000003_0 is done. And is in the process of committing
16/03/22 19:08:20 INFO mapred.LocalJobRunner: map > sort
16/03/22 19:08:20 INFO mapred.Task: Task 'attempt_local229200699_0001_m_000003_0' done.
16/03/22 19:08:20 INFO mapred.LocalJobRunner: Finishing task: attempt_local229200699_0001_m_000003_0
16/03/22 19:08:20 INFO mapred.LocalJobRunner: Starting task: attempt_local229200699_0001_m_000004_0
16/03/22 19:08:20 INFO output.FileOutputCommitter: File Output Committer Algorithm version is 1
16/03/22 19:08:20 INFO mapred.Task:  Using ResourceCalculatorProcessTree : [ ]
16/03/22 19:08:20 INFO mapred.MapTask: Processing split: hdfs://hdfs/user/cloud-user/teragen-elisska/part-m-00000:536870912+134217728
16/03/22 19:08:20 INFO mapred.MapTask: (EQUATOR) 0 kvi 26214396(104857584)
16/03/22 19:08:20 INFO mapred.MapTask: mapreduce.task.io.sort.mb: 100
16/03/22 19:08:20 INFO mapred.MapTask: soft limit at 83886080
16/03/22 19:08:20 INFO mapred.MapTask: bufstart = 0; bufvoid = 104857600
16/03/22 19:08:20 INFO mapred.MapTask: kvstart = 26214396; length = 6553600
16/03/22 19:08:20 INFO mapred.MapTask: Map output collector class = org.apache.hadoop.mapred.MapTask$MapOutputBuffer
16/03/22 19:08:20 INFO mapred.MapTask: Spilling map output
16/03/22 19:08:20 INFO mapred.MapTask: bufstart = 0; bufend = 72511698; bufvoid = 104857600
16/03/22 19:08:20 INFO mapred.MapTask: kvstart = 26214396(104857584); kvend = 23370804(93483216); length = 2843593/6553600
16/03/22 19:08:20 INFO mapred.MapTask: (EQUATOR) 75355282 kvi 18838816(75355264)
16/03/22 19:08:20 INFO mapreduce.Job:  map 100% reduce 0%
16/03/22 19:08:22 INFO mapred.MapTask: Finished spill 0
16/03/22 19:08:22 INFO mapred.MapTask: (RESET) equator 75355282 kv 18838816(75355264) kvi 18127932(72511728)
16/03/22 19:08:22 INFO mapred.LocalJobRunner: 
16/03/22 19:08:22 INFO mapred.MapTask: Starting flush of map output
16/03/22 19:08:22 INFO mapred.MapTask: Spilling map output
16/03/22 19:08:22 INFO mapred.MapTask: bufstart = 75355282; bufend = 34888038; bufvoid = 104857600
16/03/22 19:08:22 INFO mapred.MapTask: kvstart = 18838816(75355264); kvend = 16313708(65254832); length = 2525109/6553600
16/03/22 19:08:22 INFO mapreduce.Job:  map 50% reduce 0%
16/03/22 19:08:24 INFO mapred.MapTask: Finished spill 1
16/03/22 19:08:24 INFO mapred.Merger: Merging 2 sorted segments
16/03/22 19:08:24 INFO mapred.Merger: Down to the last merge-pass, with 2 segments left of total size: 139586394 bytes
16/03/22 19:08:26 INFO mapred.Task: Task:attempt_local229200699_0001_m_000004_0 is done. And is in the process of committing
16/03/22 19:08:26 INFO mapred.LocalJobRunner: map > sort
16/03/22 19:08:26 INFO mapred.Task: Task 'attempt_local229200699_0001_m_000004_0' done.
16/03/22 19:08:26 INFO mapred.LocalJobRunner: Finishing task: attempt_local229200699_0001_m_000004_0
16/03/22 19:08:26 INFO mapred.LocalJobRunner: Starting task: attempt_local229200699_0001_m_000005_0
16/03/22 19:08:26 INFO output.FileOutputCommitter: File Output Committer Algorithm version is 1
16/03/22 19:08:26 INFO mapred.Task:  Using ResourceCalculatorProcessTree : [ ]
16/03/22 19:08:26 INFO mapred.MapTask: Processing split: hdfs://hdfs/user/cloud-user/teragen-elisska/part-m-00000:671088640+134217728
16/03/22 19:08:26 INFO mapred.MapTask: (EQUATOR) 0 kvi 26214396(104857584)
16/03/22 19:08:26 INFO mapred.MapTask: mapreduce.task.io.sort.mb: 100
16/03/22 19:08:26 INFO mapred.MapTask: soft limit at 83886080
16/03/22 19:08:26 INFO mapred.MapTask: bufstart = 0; bufvoid = 104857600
16/03/22 19:08:26 INFO mapred.MapTask: kvstart = 26214396; length = 6553600
16/03/22 19:08:26 INFO mapred.MapTask: Map output collector class = org.apache.hadoop.mapred.MapTask$MapOutputBuffer
16/03/22 19:08:26 INFO mapred.MapTask: Spilling map output
16/03/22 19:08:26 INFO mapred.MapTask: bufstart = 0; bufend = 72511698; bufvoid = 104857600
16/03/22 19:08:26 INFO mapred.MapTask: kvstart = 26214396(104857584); kvend = 23370804(93483216); length = 2843593/6553600
16/03/22 19:08:26 INFO mapred.MapTask: (EQUATOR) 75355282 kvi 18838816(75355264)
16/03/22 19:08:26 INFO mapreduce.Job:  map 100% reduce 0%
16/03/22 19:08:28 INFO mapred.MapTask: Finished spill 0
16/03/22 19:08:28 INFO mapred.MapTask: (RESET) equator 75355282 kv 18838816(75355264) kvi 18127932(72511728)
16/03/22 19:08:28 INFO mapred.LocalJobRunner: 
16/03/22 19:08:28 INFO mapred.MapTask: Starting flush of map output
16/03/22 19:08:28 INFO mapred.MapTask: Spilling map output
16/03/22 19:08:28 INFO mapred.MapTask: bufstart = 75355282; bufend = 34888038; bufvoid = 104857600
16/03/22 19:08:28 INFO mapred.MapTask: kvstart = 18838816(75355264); kvend = 16313708(65254832); length = 2525109/6553600
16/03/22 19:08:28 INFO mapreduce.Job:  map 63% reduce 0%
16/03/22 19:08:29 INFO mapred.MapTask: Finished spill 1
16/03/22 19:08:29 INFO mapred.Merger: Merging 2 sorted segments
16/03/22 19:08:29 INFO mapred.Merger: Down to the last merge-pass, with 2 segments left of total size: 139586394 bytes
16/03/22 19:08:31 INFO mapred.Task: Task:attempt_local229200699_0001_m_000005_0 is done. And is in the process of committing
16/03/22 19:08:31 INFO mapred.LocalJobRunner: map > sort
16/03/22 19:08:31 INFO mapred.Task: Task 'attempt_local229200699_0001_m_000005_0' done.
16/03/22 19:08:31 INFO mapred.LocalJobRunner: Finishing task: attempt_local229200699_0001_m_000005_0
16/03/22 19:08:31 INFO mapred.LocalJobRunner: Starting task: attempt_local229200699_0001_m_000006_0
16/03/22 19:08:31 INFO output.FileOutputCommitter: File Output Committer Algorithm version is 1
16/03/22 19:08:31 INFO mapred.Task:  Using ResourceCalculatorProcessTree : [ ]
16/03/22 19:08:31 INFO mapred.MapTask: Processing split: hdfs://hdfs/user/cloud-user/teragen-elisska/part-m-00000:805306368+134217728
16/03/22 19:08:31 INFO mapred.MapTask: (EQUATOR) 0 kvi 26214396(104857584)
16/03/22 19:08:31 INFO mapred.MapTask: mapreduce.task.io.sort.mb: 100
16/03/22 19:08:31 INFO mapred.MapTask: soft limit at 83886080
16/03/22 19:08:31 INFO mapred.MapTask: bufstart = 0; bufvoid = 104857600
16/03/22 19:08:31 INFO mapred.MapTask: kvstart = 26214396; length = 6553600
16/03/22 19:08:31 INFO mapred.MapTask: Map output collector class = org.apache.hadoop.mapred.MapTask$MapOutputBuffer
16/03/22 19:08:31 INFO mapreduce.Job:  map 100% reduce 0%
16/03/22 19:08:32 INFO mapred.MapTask: Spilling map output
16/03/22 19:08:32 INFO mapred.MapTask: bufstart = 0; bufend = 72511698; bufvoid = 104857600
16/03/22 19:08:32 INFO mapred.MapTask: kvstart = 26214396(104857584); kvend = 23370804(93483216); length = 2843593/6553600
16/03/22 19:08:32 INFO mapred.MapTask: (EQUATOR) 75355282 kvi 18838816(75355264)
16/03/22 19:08:33 INFO mapred.MapTask: Finished spill 0
16/03/22 19:08:33 INFO mapred.MapTask: (RESET) equator 75355282 kv 18838816(75355264) kvi 18127932(72511728)
16/03/22 19:08:33 INFO mapred.LocalJobRunner: 
16/03/22 19:08:33 INFO mapred.MapTask: Starting flush of map output
16/03/22 19:08:33 INFO mapred.MapTask: Spilling map output
16/03/22 19:08:33 INFO mapred.MapTask: bufstart = 75355282; bufend = 34888038; bufvoid = 104857600
16/03/22 19:08:33 INFO mapred.MapTask: kvstart = 18838816(75355264); kvend = 16313708(65254832); length = 2525109/6553600
16/03/22 19:08:34 INFO mapreduce.Job:  map 75% reduce 0%
16/03/22 19:08:35 INFO mapred.MapTask: Finished spill 1
16/03/22 19:08:35 INFO mapred.Merger: Merging 2 sorted segments
16/03/22 19:08:35 INFO mapred.Merger: Down to the last merge-pass, with 2 segments left of total size: 139586394 bytes
16/03/22 19:08:37 INFO mapred.Task: Task:attempt_local229200699_0001_m_000006_0 is done. And is in the process of committing
16/03/22 19:08:37 INFO mapred.LocalJobRunner: map > sort
16/03/22 19:08:37 INFO mapred.Task: Task 'attempt_local229200699_0001_m_000006_0' done.
16/03/22 19:08:37 INFO mapred.LocalJobRunner: Finishing task: attempt_local229200699_0001_m_000006_0
16/03/22 19:08:37 INFO mapred.LocalJobRunner: Starting task: attempt_local229200699_0001_m_000007_0
16/03/22 19:08:37 INFO output.FileOutputCommitter: File Output Committer Algorithm version is 1
16/03/22 19:08:37 INFO mapred.Task:  Using ResourceCalculatorProcessTree : [ ]
16/03/22 19:08:37 INFO mapred.MapTask: Processing split: hdfs://hdfs/user/cloud-user/teragen-elisska/part-m-00000:939524096+60475904
16/03/22 19:08:37 INFO mapred.MapTask: (EQUATOR) 0 kvi 26214396(104857584)
16/03/22 19:08:37 INFO mapred.MapTask: mapreduce.task.io.sort.mb: 100
16/03/22 19:08:37 INFO mapred.MapTask: soft limit at 83886080
16/03/22 19:08:37 INFO mapred.MapTask: bufstart = 0; bufvoid = 104857600
16/03/22 19:08:37 INFO mapred.MapTask: kvstart = 26214396; length = 6553600
16/03/22 19:08:37 INFO mapred.MapTask: Map output collector class = org.apache.hadoop.mapred.MapTask$MapOutputBuffer
16/03/22 19:08:37 INFO mapred.LocalJobRunner: 
16/03/22 19:08:37 INFO mapred.MapTask: Starting flush of map output
16/03/22 19:08:37 INFO mapred.MapTask: Spilling map output
16/03/22 19:08:37 INFO mapred.MapTask: bufstart = 0; bufend = 61685418; bufvoid = 104857600
16/03/22 19:08:37 INFO mapred.MapTask: kvstart = 26214396(104857584); kvend = 23795364(95181456); length = 2419033/6553600
16/03/22 19:08:37 INFO mapreduce.Job:  map 88% reduce 0%
16/03/22 19:08:38 INFO mapred.MapTask: Finished spill 0
16/03/22 19:08:38 INFO mapred.Task: Task:attempt_local229200699_0001_m_000007_0 is done. And is in the process of committing
16/03/22 19:08:38 INFO mapred.LocalJobRunner: map
16/03/22 19:08:38 INFO mapred.Task: Task 'attempt_local229200699_0001_m_000007_0' done.
16/03/22 19:08:38 INFO mapred.LocalJobRunner: Finishing task: attempt_local229200699_0001_m_000007_0
16/03/22 19:08:38 INFO mapred.LocalJobRunner: map task executor complete.
16/03/22 19:08:38 INFO mapred.LocalJobRunner: Waiting for reduce tasks
16/03/22 19:08:38 INFO mapred.LocalJobRunner: Starting task: attempt_local229200699_0001_r_000000_0
16/03/22 19:08:38 INFO output.FileOutputCommitter: File Output Committer Algorithm version is 1
16/03/22 19:08:38 INFO mapred.Task:  Using ResourceCalculatorProcessTree : [ ]
16/03/22 19:08:38 INFO mapred.ReduceTask: Using ShuffleConsumerPlugin: org.apache.hadoop.mapreduce.task.reduce.Shuffle@2fec383
16/03/22 19:08:38 INFO reduce.MergeManagerImpl: MergerManager: memoryLimit=670878912, maxSingleShuffleLimit=167719728, mergeThreshold=442780096, ioSortFactor=10, memToMemMergeOutputsThreshold=10
16/03/22 19:08:38 INFO reduce.EventFetcher: attempt_local229200699_0001_r_000000_0 Thread started: EventFetcher for fetching Map Completion Events
16/03/22 19:08:38 INFO reduce.LocalFetcher: localfetcher#1 about to shuffle output of map attempt_local229200699_0001_m_000001_0 decomp: 139586410 len: 139586414 to MEMORY
16/03/22 19:08:39 INFO reduce.InMemoryMapOutput: Read 139586410 bytes from map-output for attempt_local229200699_0001_m_000001_0
16/03/22 19:08:39 INFO reduce.MergeManagerImpl: closeInMemoryFile -> map-output of size: 139586410, inMemoryMapOutputs.size() -> 1, commitMemory -> 0, usedMemory ->139586410
16/03/22 19:08:39 INFO reduce.LocalFetcher: localfetcher#1 about to shuffle output of map attempt_local229200699_0001_m_000004_0 decomp: 139586410 len: 139586414 to MEMORY
16/03/22 19:08:39 INFO reduce.InMemoryMapOutput: Read 139586410 bytes from map-output for attempt_local229200699_0001_m_000004_0
16/03/22 19:08:39 INFO reduce.MergeManagerImpl: closeInMemoryFile -> map-output of size: 139586410, inMemoryMapOutputs.size() -> 2, commitMemory -> 139586410, usedMemory ->279172820
16/03/22 19:08:39 INFO reduce.LocalFetcher: localfetcher#1 about to shuffle output of map attempt_local229200699_0001_m_000005_0 decomp: 139586410 len: 139586414 to MEMORY
16/03/22 19:08:39 INFO mapreduce.Job:  map 100% reduce 0%
16/03/22 19:08:39 INFO reduce.InMemoryMapOutput: Read 139586410 bytes from map-output for attempt_local229200699_0001_m_000005_0
16/03/22 19:08:39 INFO reduce.MergeManagerImpl: closeInMemoryFile -> map-output of size: 139586410, inMemoryMapOutputs.size() -> 3, commitMemory -> 279172820, usedMemory ->418759230
16/03/22 19:08:39 INFO reduce.LocalFetcher: localfetcher#1 about to shuffle output of map attempt_local229200699_0001_m_000002_0 decomp: 139586410 len: 139586414 to MEMORY
16/03/22 19:08:41 INFO reduce.InMemoryMapOutput: Read 139586410 bytes from map-output for attempt_local229200699_0001_m_000002_0
16/03/22 19:08:41 INFO reduce.MergeManagerImpl: closeInMemoryFile -> map-output of size: 139586410, inMemoryMapOutputs.size() -> 4, commitMemory -> 418759230, usedMemory ->558345640
16/03/22 19:08:41 INFO reduce.MergeManagerImpl: Starting inMemoryMerger's merge since commitMemory=558345640 > mergeThreshold=442780096. Current usedMemory=558345640
16/03/22 19:08:41 INFO reduce.MergeThread: InMemoryMerger - Thread to merge in-memory shuffled map-outputs: Starting merge with 4 segments, while ignoring 0 segments
16/03/22 19:08:41 INFO reduce.MergeManagerImpl: Initiating in-memory merge with 4 segments...
16/03/22 19:08:41 INFO mapred.Merger: Merging 4 sorted segments
16/03/22 19:08:41 INFO mapred.Merger: Down to the last merge-pass, with 4 segments left of total size: 558345588 bytes
16/03/22 19:08:41 INFO reduce.LocalFetcher: localfetcher#1 about to shuffle output of map attempt_local229200699_0001_m_000003_0 decomp: 139586514 len: 139586518 to MEMORY
16/03/22 19:08:42 INFO reduce.InMemoryMapOutput: Read 139586514 bytes from map-output for attempt_local229200699_0001_m_000003_0
16/03/22 19:08:42 INFO reduce.MergeManagerImpl: closeInMemoryFile -> map-output of size: 139586514, inMemoryMapOutputs.size() -> 1, commitMemory -> 0, usedMemory ->697932154
16/03/22 19:08:42 INFO reduce.LocalFetcher: fetcher#1 - MergeManager returned Status.WAIT ...
16/03/22 19:08:44 INFO mapred.LocalJobRunner: reduce > copy task(attempt_local229200699_0001_m_000003_0 succeeded at 133120.08 MB/s) Aggregated copy rate(5 of 8 at 665600.00 MB/s)
16/03/22 19:08:45 INFO mapreduce.Job:  map 100% reduce 21%
16/03/22 19:08:46 INFO reduce.MergeManagerImpl: attempt_local229200699_0001_r_000000_0 Merge of the 4 files in-memory complete. Local file is /tmp/hadoop-cloud-user/mapred/local/localRunner/cloud-user/jobcache/job_local229200699_0001/attempt_local229200699_0001_r_000000_0/output/map_1.out.merged of size 558345638
16/03/22 19:08:46 INFO reduce.LocalFetcher: localfetcher#1 about to shuffle output of map attempt_local229200699_0001_m_000006_0 decomp: 139586410 len: 139586414 to MEMORY
16/03/22 19:08:46 INFO reduce.InMemoryMapOutput: Read 139586410 bytes from map-output for attempt_local229200699_0001_m_000006_0
16/03/22 19:08:46 INFO reduce.MergeManagerImpl: closeInMemoryFile -> map-output of size: 139586410, inMemoryMapOutputs.size() -> 2, commitMemory -> 139586514, usedMemory ->279172924
16/03/22 19:08:46 INFO reduce.LocalFetcher: localfetcher#1 about to shuffle output of map attempt_local229200699_0001_m_000000_0 decomp: 139586514 len: 139586518 to MEMORY
16/03/22 19:08:47 INFO reduce.InMemoryMapOutput: Read 139586514 bytes from map-output for attempt_local229200699_0001_m_000000_0
16/03/22 19:08:47 INFO reduce.MergeManagerImpl: closeInMemoryFile -> map-output of size: 139586514, inMemoryMapOutputs.size() -> 3, commitMemory -> 279172924, usedMemory ->418759438
16/03/22 19:08:47 INFO reduce.LocalFetcher: localfetcher#1 about to shuffle output of map attempt_local229200699_0001_m_000007_0 decomp: 62894938 len: 62894942 to MEMORY
16/03/22 19:08:47 INFO reduce.InMemoryMapOutput: Read 62894938 bytes from map-output for attempt_local229200699_0001_m_000007_0
16/03/22 19:08:47 INFO reduce.MergeManagerImpl: closeInMemoryFile -> map-output of size: 62894938, inMemoryMapOutputs.size() -> 4, commitMemory -> 418759438, usedMemory ->481654376
16/03/22 19:08:47 INFO reduce.MergeManagerImpl: Starting inMemoryMerger's merge since commitMemory=481654376 > mergeThreshold=442780096. Current usedMemory=481654376
16/03/22 19:08:47 INFO reduce.MergeThread: InMemoryMerger - Thread to merge in-memory shuffled map-outputs: Starting merge with 4 segments, while ignoring 0 segments
16/03/22 19:08:47 INFO reduce.MergeManagerImpl: Initiating in-memory merge with 4 segments...
16/03/22 19:08:47 INFO mapred.Merger: Merging 4 sorted segments
16/03/22 19:08:47 INFO mapred.Merger: Down to the last merge-pass, with 4 segments left of total size: 481654324 bytes
16/03/22 19:08:47 INFO reduce.EventFetcher: EventFetcher is interrupted.. Returning
16/03/22 19:08:47 INFO mapred.LocalJobRunner: 8 / 8 copied.
16/03/22 19:08:47 INFO mapred.LocalJobRunner: reduce > sort
16/03/22 19:08:48 INFO mapreduce.Job:  map 100% reduce 33%
16/03/22 19:08:50 INFO mapred.LocalJobRunner: reduce > sort
16/03/22 19:08:51 INFO reduce.MergeManagerImpl: attempt_local229200699_0001_r_000000_0 Merge of the 4 files in-memory complete. Local file is /tmp/hadoop-cloud-user/mapred/local/localRunner/cloud-user/jobcache/job_local229200699_0001/attempt_local229200699_0001_r_000000_0/output/map_7.out.merged of size 481654374
16/03/22 19:08:51 INFO reduce.MergeManagerImpl: finalMerge called with 0 in-memory map-outputs and 2 on-disk map-outputs
16/03/22 19:08:51 INFO reduce.MergeManagerImpl: Merging 2 files, 1040000012 bytes from disk
16/03/22 19:08:51 INFO reduce.MergeManagerImpl: Merging 0 segments, 0 bytes from memory into reduce
16/03/22 19:08:51 INFO mapred.Merger: Merging 2 sorted segments
16/03/22 19:08:51 INFO mapred.Merger: Down to the last merge-pass, with 2 segments left of total size: 1039999978 bytes
16/03/22 19:08:51 INFO mapred.LocalJobRunner: reduce > sort
16/03/22 19:08:51 INFO Configuration.deprecation: mapred.skip.on is deprecated. Instead, use mapreduce.job.skiprecords
16/03/22 19:08:53 INFO mapred.LocalJobRunner: reduce > reduce
16/03/22 19:08:54 INFO mapreduce.Job:  map 100% reduce 73%
16/03/22 19:08:56 INFO mapred.LocalJobRunner: reduce > reduce
16/03/22 19:08:57 INFO mapreduce.Job:  map 100% reduce 79%
16/03/22 19:08:59 INFO mapred.LocalJobRunner: reduce > reduce
16/03/22 19:09:00 INFO mapreduce.Job:  map 100% reduce 80%
16/03/22 19:09:02 INFO mapred.LocalJobRunner: reduce > reduce
16/03/22 19:09:03 INFO mapreduce.Job:  map 100% reduce 88%
16/03/22 19:09:05 INFO mapred.LocalJobRunner: reduce > reduce
16/03/22 19:09:06 INFO mapreduce.Job:  map 100% reduce 95%
16/03/22 19:09:07 INFO mapred.Task: Task:attempt_local229200699_0001_r_000000_0 is done. And is in the process of committing
16/03/22 19:09:07 INFO mapred.LocalJobRunner: reduce > reduce
16/03/22 19:09:07 INFO mapred.Task: Task attempt_local229200699_0001_r_000000_0 is allowed to commit now
16/03/22 19:09:07 INFO output.FileOutputCommitter: Saved output of task 'attempt_local229200699_0001_r_000000_0' to hdfs://hdfs/user/cloud-user/terasort-elisska/_temporary/0/task_local229200699_0001_r_000000
16/03/22 19:09:07 INFO mapred.LocalJobRunner: reduce > reduce
16/03/22 19:09:07 INFO mapred.Task: Task 'attempt_local229200699_0001_r_000000_0' done.
16/03/22 19:09:07 INFO mapred.LocalJobRunner: Finishing task: attempt_local229200699_0001_r_000000_0
16/03/22 19:09:07 INFO mapred.LocalJobRunner: reduce task executor complete.
16/03/22 19:09:08 INFO mapreduce.Job:  map 100% reduce 100%
16/03/22 19:09:08 INFO mapreduce.Job: Job job_local229200699_0001 completed successfully
16/03/22 19:09:08 INFO mapreduce.Job: Counters: 38
	File System Counters
		FILE: Number of bytes read=7945158405
		FILE: Number of bytes written=12896099842
		FILE: Number of read operations=0
		FILE: Number of large read operations=0
		FILE: Number of write operations=0
		HDFS: Number of bytes read=5848096700
		HDFS: Number of bytes written=1000000000
		HDFS: Number of read operations=298
		HDFS: Number of large read operations=0
		HDFS: Number of write operations=20
	Map-Reduce Framework
		Map input records=10000000
		Map output records=10000000
		Map output bytes=1020000000
		Map output materialized bytes=1040000048
		Input split bytes=968
		Combine input records=0
		Combine output records=0
		Reduce input groups=10000000
		Reduce shuffle bytes=1040000048
		Reduce input records=10000000
		Reduce output records=10000000
		Spilled Records=29395241
		Shuffled Maps =8
		Failed Shuffles=0
		Merged Map outputs=8
		GC time elapsed (ms)=1212
		CPU time spent (ms)=0
		Physical memory (bytes) snapshot=0
		Virtual memory (bytes) snapshot=0
		Total committed heap usage (bytes)=7196901376
	Shuffle Errors
		BAD_ID=0
		CONNECTION=0
		IO_ERROR=0
		WRONG_LENGTH=0
		WRONG_MAP=0
		WRONG_REDUCE=0
	File Input Format Counters 
		Bytes Read=1000000000
	File Output Format Counters 
		Bytes Written=1000000000
16/03/22 19:09:08 INFO terasort.TeraSort: done

real	1m18.534s
user	1m10.999s
sys	0m8.935s
```

**Second terasort run - dfs.client.read.shortcircuit=true**

```
[cloud-user@host-10-100-0-97 ~]$ hdfs getconf -confKey dfs.client.read.shortcircuit
true
[cloud-user@host-10-100-0-97 ~]$ hdfs dfs -rm -r -f -skipTrash /user/cloud-user/terasort-elisska
Deleted /user/cloud-user/terasort-elisska
[cloud-user@host-10-100-0-97 ~]$ time yarn jar /opt/cloudera/parcels/CDH/lib/hadoop-mapreduce/hadoop-mapreduce-examples.jar terasort /user/cloud-user/teragen-elisska /user/cloud-user/terasort-elisska
16/03/22 19:47:33 INFO terasort.TeraSort: starting
16/03/22 19:47:34 INFO input.FileInputFormat: Total input paths to process : 1
Spent 135ms computing base-splits.
Spent 2ms computing TeraScheduler splits.
Computing input splits took 137ms
Sampling 8 splits of 8
Making 8 from 100000 sampled records
Computing parititions took 548ms
Spent 688ms computing partitions.
16/03/22 19:47:36 INFO mapreduce.JobSubmitter: number of splits:8
16/03/22 19:47:36 INFO mapreduce.JobSubmitter: Submitting tokens for job: job_1458674750325_0002
16/03/22 19:47:36 INFO impl.YarnClientImpl: Submitted application application_1458674750325_0002
16/03/22 19:47:36 INFO mapreduce.Job: The url to track the job: http://host-10-100-0-103:8088/proxy/application_1458674750325_0002/
16/03/22 19:47:36 INFO mapreduce.Job: Running job: job_1458674750325_0002
16/03/22 19:47:42 INFO mapreduce.Job: Job job_1458674750325_0002 running in uber mode : false
16/03/22 19:47:42 INFO mapreduce.Job:  map 0% reduce 0%
[###Job Progress###]
16/03/22 19:48:11 INFO mapreduce.Job:  map 100% reduce 100%
16/03/22 19:48:11 INFO mapreduce.Job: Job job_1458674750325_0002 completed successfully
16/03/22 19:48:11 INFO mapreduce.Job: Counters: 49
	File System Counters
		FILE: Number of bytes read=443033316
		FILE: Number of bytes written=885007043
		FILE: Number of read operations=0
		FILE: Number of large read operations=0
		FILE: Number of write operations=0
		HDFS: Number of bytes read=1000000968
		HDFS: Number of bytes written=1000000000
		HDFS: Number of read operations=48
		HDFS: Number of large read operations=0
		HDFS: Number of write operations=16
	Job Counters 
		Launched map tasks=8
		Launched reduce tasks=8
		Data-local map tasks=8
		Total time spent by all maps in occupied slots (ms)=107553
		Total time spent by all reduces in occupied slots (ms)=54018
		Total time spent by all map tasks (ms)=107553
		Total time spent by all reduce tasks (ms)=54018
		Total vcore-seconds taken by all map tasks=107553
		Total vcore-seconds taken by all reduce tasks=54018
		Total megabyte-seconds taken by all map tasks=110134272
		Total megabyte-seconds taken by all reduce tasks=55314432
	Map-Reduce Framework
		Map input records=10000000
		Map output records=10000000
		Map output bytes=1020000000
		Map output materialized bytes=440035439
		Input split bytes=968
		Combine input records=0
		Combine output records=0
		Reduce input groups=10000000
		Reduce shuffle bytes=440035439
		Reduce input records=10000000
		Reduce output records=10000000
		Spilled Records=20000000
		Shuffled Maps =64
		Failed Shuffles=0
		Merged Map outputs=64
		GC time elapsed (ms)=1394
		CPU time spent (ms)=83210
		Physical memory (bytes) snapshot=7012651008
		Virtual memory (bytes) snapshot=25176121344
		Total committed heap usage (bytes)=8194097152
	Shuffle Errors
		BAD_ID=0
		CONNECTION=0
		IO_ERROR=0
		WRONG_LENGTH=0
		WRONG_MAP=0
		WRONG_REDUCE=0
	File Input Format Counters 
		Bytes Read=1000000000
	File Output Format Counters 
		Bytes Written=1000000000
16/03/22 19:48:11 INFO terasort.TeraSort: done

real	0m38.892s
user	0m5.640s
sys	0m0.281s
```
