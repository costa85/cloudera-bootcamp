**Cluster access details and some notes**

Cloudera Manager screenshot: [3_cm_installed.png](3_cm_installed.png)

**BONUS:** All Web UIs (except Cloudera Manager and Hue) are configured through HAProxy on `128.107.17.137` that shares *edge* and *utility* responsibilities.

* Cloudera Manager UI: [http://128.107.17.137:7180/](http://128.107.17.137:7180/)
* HUE: [http://128.107.17.137:8888/](http://128.107.17.137:8888/)
* NameNode UI: [http://128.107.17.137:50070/](http://128.107.17.137:50070/)
* Yarn ResourceManager UI: [http://128.107.17.137:8088/](http://128.107.17.137:8088/)
* Yarn HistoryServer UI: [http://128.107.17.137:19888/](http://128.107.17.137:19888/)
* Oozie Web UI: [http://128.107.17.137:11000/](http://128.107.17.137:11000/)

But the same UIs are also accessible via Public IPs, so that proxy can be used if there are no Public IPs on masters and workers.
Please note that all services that require database are configured to work with MySQL.

*TODO:* 
* HAproxy configuration for Impala
* HAProxy configuration for Hive

