**Exports:**

```
[root@ip-172-31-44-233 ~]# grep export /etc/default/cloudera-scm-server
export CMF_JDBC_DRIVER_JAR="/usr/share/java/mysql-connector-java.jar:/usr/share/java/oracle-connector-java.jar"
export CMF_JAVA_OPTS="-Xmx2G -XX:MaxPermSize=256m -XX:+HeapDumpOnOutOfMemoryError -XX:HeapDumpPath=/tmp"
[root@ip-172-31-44-233 ~]#
```
