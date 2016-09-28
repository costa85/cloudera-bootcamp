**PI command for waldorf:**

```
[waldorf@ip-172-31-44-233 ~]$ yarn jar /opt/cloudera/parcels/CDH/lib/hadoop-mapreduce/hadoop-mapreduce-examples.jar pi 4 10
Number of Maps  = 4
Samples per Map = 10
Wrote input for Map #0
Wrote input for Map #1
Wrote input for Map #2
Wrote input for Map #3
Starting Job
16/03/25 18:47:47 INFO client.RMProxy: Connecting to ResourceManager at ip-172-31-46-70.us-west-2.compute.internal/172.31.46.70:8032
16/03/25 18:47:47 INFO hdfs.DFSClient: Created HDFS_DELEGATION_TOKEN token 1 for waldorf on 172.31.42.173:8020
16/03/25 18:47:47 INFO security.TokenCache: Got dt for hdfs://ip-172-31-42-173.us-west-2.compute.internal:8020; Kind: HDFS_DELEGATION_TOKEN, Service: 172.31.42.173:8020, Ident: (HDFS_DELEGATION_TOKEN token 1 for waldorf)
16/03/25 18:47:48 INFO input.FileInputFormat: Total input paths to process : 4
16/03/25 18:47:48 INFO mapreduce.JobSubmitter: number of splits:4
16/03/25 18:47:48 INFO mapreduce.JobSubmitter: Submitting tokens for job: job_1458931602835_0001
16/03/25 18:47:48 INFO mapreduce.JobSubmitter: Kind: HDFS_DELEGATION_TOKEN, Service: 172.31.42.173:8020, Ident: (HDFS_DELEGATION_TOKEN token 1 for waldorf)
16/03/25 18:47:49 INFO impl.YarnClientImpl: Submitted application application_1458931602835_0001
16/03/25 18:47:49 INFO mapreduce.Job: The url to track the job: http://ip-172-31-46-70.us-west-2.compute.internal:8088/proxy/application_1458931602835_0001/
16/03/25 18:47:49 INFO mapreduce.Job: Running job: job_1458931602835_0001
16/03/25 18:48:00 INFO mapreduce.Job: Job job_1458931602835_0001 running in uber mode : false
16/03/25 18:48:00 INFO mapreduce.Job:  map 0% reduce 0%
16/03/25 18:48:06 INFO mapreduce.Job:  map 25% reduce 0%
16/03/25 18:48:10 INFO mapreduce.Job:  map 100% reduce 0%
16/03/25 18:48:16 INFO mapreduce.Job:  map 100% reduce 100%
16/03/25 18:48:16 INFO mapreduce.Job: Job job_1458931602835_0001 completed successfully
16/03/25 18:48:16 INFO mapreduce.Job: Counters: 49
	File System Counters
		FILE: Number of bytes read=65
		FILE: Number of bytes written=583090
		FILE: Number of read operations=0
		FILE: Number of large read operations=0
		FILE: Number of write operations=0
		HDFS: Number of bytes read=1200
		HDFS: Number of bytes written=215
		HDFS: Number of read operations=19
		HDFS: Number of large read operations=0
		HDFS: Number of write operations=3
	Job Counters 
		Launched map tasks=4
		Launched reduce tasks=1
		Data-local map tasks=4
		Total time spent by all maps in occupied slots (ms)=25737
		Total time spent by all reduces in occupied slots (ms)=3960
		Total time spent by all map tasks (ms)=25737
		Total time spent by all reduce tasks (ms)=3960
		Total vcore-seconds taken by all map tasks=25737
		Total vcore-seconds taken by all reduce tasks=3960
		Total megabyte-seconds taken by all map tasks=26354688
		Total megabyte-seconds taken by all reduce tasks=4055040
	Map-Reduce Framework
		Map input records=4
		Map output records=8
		Map output bytes=72
		Map output materialized bytes=135
		Input split bytes=728
		Combine input records=0
		Combine output records=0
		Reduce input groups=2
		Reduce shuffle bytes=135
		Reduce input records=8
		Reduce output records=0
		Spilled Records=16
		Shuffled Maps =4
		Failed Shuffles=0
		Merged Map outputs=4
		GC time elapsed (ms)=92
		CPU time spent (ms)=3740
		Physical memory (bytes) snapshot=2006892544
		Virtual memory (bytes) snapshot=7861571584
		Total committed heap usage (bytes)=2442657792
	Shuffle Errors
		BAD_ID=0
		CONNECTION=0
		IO_ERROR=0
		WRONG_LENGTH=0
		WRONG_MAP=0
		WRONG_REDUCE=0
	File Input Format Counters 
		Bytes Read=472
	File Output Format Counters 
		Bytes Written=97
Job Finished in 28.774 seconds
Estimated value of Pi is 3.40000000000000000000
```

**PI command for statler:**

```
[statler@ip-172-31-44-233 ~]$ yarn jar /opt/cloudera/parcels/CDH/lib/hadoop-mapreduce/hadoop-mapreduce-examples.jar pi 4 10
Number of Maps  = 4
Samples per Map = 10
16/03/25 18:49:46 WARN security.UserGroupInformation: PriviledgedActionException as:statler (auth:KERBEROS) cause:javax.security.sasl.SaslException: GSS initiate failed [Caused by GSSException: No valid credentials provided (Mechanism level: Failed to find any Kerberos tgt)]
16/03/25 18:49:46 WARN ipc.Client: Exception encountered while connecting to the server : javax.security.sasl.SaslException: GSS initiate failed [Caused by GSSException: No valid credentials provided (Mechanism level: Failed to find any Kerberos tgt)]
16/03/25 18:49:46 WARN security.UserGroupInformation: PriviledgedActionException as:statler (auth:KERBEROS) cause:java.io.IOException: javax.security.sasl.SaslException: GSS initiate failed [Caused by GSSException: No valid credentials provided (Mechanism level: Failed to find any Kerberos tgt)]
java.io.IOException: Failed on local exception: java.io.IOException: javax.security.sasl.SaslException: GSS initiate failed [Caused by GSSException: No valid credentials provided (Mechanism level: Failed to find any Kerberos tgt)]; Host Details : local host is: "ip-172-31-44-233.us-west-2.compute.internal/172.31.44.233"; destination host is: "ip-172-31-42-173.us-west-2.compute.internal":8020; 
	at org.apache.hadoop.net.NetUtils.wrapException(NetUtils.java:772)
	at org.apache.hadoop.ipc.Client.call(Client.java:1476)
	at org.apache.hadoop.ipc.Client.call(Client.java:1403)
	at org.apache.hadoop.ipc.ProtobufRpcEngine$Invoker.invoke(ProtobufRpcEngine.java:230)
	at com.sun.proxy.$Proxy14.getFileInfo(Unknown Source)
	at org.apache.hadoop.hdfs.protocolPB.ClientNamenodeProtocolTranslatorPB.getFileInfo(ClientNamenodeProtocolTranslatorPB.java:752)
	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)
	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:57)
	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)
	at java.lang.reflect.Method.invoke(Method.java:606)
	at org.apache.hadoop.io.retry.RetryInvocationHandler.invokeMethod(RetryInvocationHandler.java:252)
	at org.apache.hadoop.io.retry.RetryInvocationHandler.invoke(RetryInvocationHandler.java:104)
	at com.sun.proxy.$Proxy15.getFileInfo(Unknown Source)
	at org.apache.hadoop.hdfs.DFSClient.getFileInfo(DFSClient.java:2095)
	at org.apache.hadoop.hdfs.DistributedFileSystem$19.doCall(DistributedFileSystem.java:1214)
	at org.apache.hadoop.hdfs.DistributedFileSystem$19.doCall(DistributedFileSystem.java:1210)
	at org.apache.hadoop.fs.FileSystemLinkResolver.resolve(FileSystemLinkResolver.java:81)
	at org.apache.hadoop.hdfs.DistributedFileSystem.getFileStatus(DistributedFileSystem.java:1210)
	at org.apache.hadoop.fs.FileSystem.exists(FileSystem.java:1409)
	at org.apache.hadoop.examples.QuasiMonteCarlo.estimatePi(QuasiMonteCarlo.java:278)
	at org.apache.hadoop.examples.QuasiMonteCarlo.run(QuasiMonteCarlo.java:354)
	at org.apache.hadoop.util.ToolRunner.run(ToolRunner.java:70)
	at org.apache.hadoop.examples.QuasiMonteCarlo.main(QuasiMonteCarlo.java:363)
	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)
	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:57)
	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)
	at java.lang.reflect.Method.invoke(Method.java:606)
	at org.apache.hadoop.util.ProgramDriver$ProgramDescription.invoke(ProgramDriver.java:71)
	at org.apache.hadoop.util.ProgramDriver.run(ProgramDriver.java:144)
	at org.apache.hadoop.examples.ExampleDriver.main(ExampleDriver.java:74)
	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)
	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:57)
	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)
	at java.lang.reflect.Method.invoke(Method.java:606)
	at org.apache.hadoop.util.RunJar.run(RunJar.java:221)
	at org.apache.hadoop.util.RunJar.main(RunJar.java:136)
Caused by: java.io.IOException: javax.security.sasl.SaslException: GSS initiate failed [Caused by GSSException: No valid credentials provided (Mechanism level: Failed to find any Kerberos tgt)]
	at org.apache.hadoop.ipc.Client$Connection$1.run(Client.java:682)
	at java.security.AccessController.doPrivileged(Native Method)
	at javax.security.auth.Subject.doAs(Subject.java:415)
	at org.apache.hadoop.security.UserGroupInformation.doAs(UserGroupInformation.java:1671)
	at org.apache.hadoop.ipc.Client$Connection.handleSaslConnectionFailure(Client.java:645)
	at org.apache.hadoop.ipc.Client$Connection.setupIOstreams(Client.java:733)
	at org.apache.hadoop.ipc.Client$Connection.access$2800(Client.java:370)
	at org.apache.hadoop.ipc.Client.getConnection(Client.java:1525)
	at org.apache.hadoop.ipc.Client.call(Client.java:1442)
	... 34 more
Caused by: javax.security.sasl.SaslException: GSS initiate failed [Caused by GSSException: No valid credentials provided (Mechanism level: Failed to find any Kerberos tgt)]
	at com.sun.security.sasl.gsskerb.GssKrb5Client.evaluateChallenge(GssKrb5Client.java:212)
	at org.apache.hadoop.security.SaslRpcClient.saslConnect(SaslRpcClient.java:413)
	at org.apache.hadoop.ipc.Client$Connection.setupSaslConnection(Client.java:555)
	at org.apache.hadoop.ipc.Client$Connection.access$1800(Client.java:370)
	at org.apache.hadoop.ipc.Client$Connection$2.run(Client.java:725)
	at org.apache.hadoop.ipc.Client$Connection$2.run(Client.java:721)
	at java.security.AccessController.doPrivileged(Native Method)
	at javax.security.auth.Subject.doAs(Subject.java:415)
	at org.apache.hadoop.security.UserGroupInformation.doAs(UserGroupInformation.java:1671)
	at org.apache.hadoop.ipc.Client$Connection.setupIOstreams(Client.java:720)
	... 37 more
Caused by: GSSException: No valid credentials provided (Mechanism level: Failed to find any Kerberos tgt)
	at sun.security.jgss.krb5.Krb5InitCredential.getInstance(Krb5InitCredential.java:147)
	at sun.security.jgss.krb5.Krb5MechFactory.getCredentialElement(Krb5MechFactory.java:121)
	at sun.security.jgss.krb5.Krb5MechFactory.getMechanismContext(Krb5MechFactory.java:187)
	at sun.security.jgss.GSSManagerImpl.getMechanismContext(GSSManagerImpl.java:223)
	at sun.security.jgss.GSSContextImpl.initSecContext(GSSContextImpl.java:212)
	at sun.security.jgss.GSSContextImpl.initSecContext(GSSContextImpl.java:179)
	at com.sun.security.sasl.gsskerb.GssKrb5Client.evaluateChallenge(GssKrb5Client.java:193)
	... 46 more
[statler@ip-172-31-44-233 ~]$ 

```
