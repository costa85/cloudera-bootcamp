**MySQL server hostname, version, user privileges and existing databases:**

```
[root@ip-172-31-33-1 ~]# service mysqld status
mysqld (pid  7561) is running...
[root@ip-172-31-33-1 ~]# mysql --version
mysql  Ver 14.14 Distrib 5.6.29, for Linux (x86_64) using  EditLine wrapper
[root@ip-172-31-33-1 ~]# mysql -u root -p
Enter password: 
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 16
Server version: 5.6.29-log MySQL Community Server (GPL)

Copyright (c) 2000, 2016, Oracle and/or its affiliates. All rights reserved.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> SELECT * FROM information_schema.user_privileges WHERE privilege_type = 'usage';
+---------------------+---------------+----------------+--------------+
| GRANTEE             | TABLE_CATALOG | PRIVILEGE_TYPE | IS_GRANTABLE |
+---------------------+---------------+----------------+--------------+
| 'hue'@'localhost'   | def           | USAGE          | NO           |
| 'hive'@'localhost'  | def           | USAGE          | NO           |
| 'rman'@'localhost'  | def           | USAGE          | NO           |
| 'amon'@'localhost'  | def           | USAGE          | NO           |
| 'oozie'@'localhost' | def           | USAGE          | NO           |
| 'amon'@'%'          | def           | USAGE          | NO           |
| 'rman'@'%'          | def           | USAGE          | NO           |
| 'hive'@'%'          | def           | USAGE          | NO           |
| 'hue'@'%'           | def           | USAGE          | NO           |
| 'oozie'@'%'         | def           | USAGE          | NO           |
+---------------------+---------------+----------------+--------------+
10 rows in set (0,00 sec)

mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| information_schema |
| amon               |
| hue                |
| metastore          |
| mysql              |
| oozie              |
| performance_schema |
| rman               |
+--------------------+
8 rows in set (0,00 sec)

mysql> exit;
Bye
[root@ip-172-31-33-1 ~]#
```
