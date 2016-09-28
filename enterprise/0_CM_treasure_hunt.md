**What is ubertask optimization?**

Whether to enable ubertask optimization, which runs "sufficiently small" jobs sequentially within a single JVM. "Small" is defined by the mapreduce.job.ubertask.maxmaps, mapreduce.job.ubertask.maxreduces, and mapreduce.job.ubertask.maxbytes settings.

**Where in CM is the Kerberos Security Realm value displayed?**

Administration -> Settings -> Kerberos -> Kerberos Security Realmv

**Which CDH service(s) host a property for enabling Kerberos authentication?**

* Zookeeper: Enable Kerberos Authentication
* HDFS: Enable Kerberos Authentication for HTTP Web-consoles
* YARN: Enable Kerberos Authentication for HTTP Web-consoles

**How do you upgrade the CM agents?**

Via Upgrade wizard. But that cannot be found via CM search feature. 

**Give the tsquery statement used to chart Hue CPU utilization?**

`select cpu_system_rate + cpu_user_rate where category=ROLE and serviceType = HUE`

This can be found via Search -> tsquery -> Chart Builder -> Examples

**List all the roles that make up the Hive service.**

Search -> "role hive" gets all the roles for Hive service:

* Hive: HiveServer2
* Hive: Hive Metastore Service
* Hive: Gateway
* Hive: WebHCat Server

**List the prerequisite steps necessary to integrating Cloudera Manager with a Kerberos MIT KDC.**

This is cannot be found via CM search functionality. But if you go to Administration -> Security, there is Security inspector should be ran before Kerberos setup. Also, at first pages of Kerberos wizard there is a number of steps to be performed. General steps are:

* Working KDC
* KDC allows renewable tickets
* Account with permissions to create principals in KDC
* Java security extention library installed in $JAVA_HOME/jre/lib/security on oll cluster nodes
