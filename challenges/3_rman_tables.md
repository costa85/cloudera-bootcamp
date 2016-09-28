**RMAN tables:**

```
[root@ip-172-31-33-1 ~]# mysql -u root -p
Enter password: 
mysql> select table_name from information_schema.tables where table_schema='rman';
+------------------------+
| table_name             |
+------------------------+
| RMAN_SCHEMA_VERSION    |
| RMAN_USERGROUPHISTORY  |
| RMAN_WATCHEDDIR        |
| RMAN_WATCHEDDIRHISTORY |
+------------------------+
4 rows in set (0,00 sec)

mysql>
```
