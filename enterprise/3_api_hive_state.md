**Hive stop, Hive status, Hive start, Hive status commands:**

```
[elisska@host-10-100-0-97 ~]$ curl -k -u 'admin:admin' 'https://128.107.17.137:7183/api/version'
v11
[elisska@host-10-100-0-97 ~]$ curl -k -u 'admin:admin' -X POST -H "Content-Type:application/json" 'https://128.107.17.137:7183/api/v11/clusters/elisska/services/hive/commands/stop'
{
  "id" : 1913,
  "name" : "Stop",
  "startTime" : "2016-03-24T18:17:05.022Z",
  "active" : true,
  "serviceRef" : {
    "clusterName" : "cluster",
    "serviceName" : "hive"
  }
}[elisska@host-10-100-0-97 ~]$ curl -k -u 'admin:admin' 'https://128.107.17.137:7183/api/v1/clusters/elisska/services/hive/'
{
  "name" : "hive",
  "type" : "HIVE",
  "clusterRef" : {
    "clusterName" : "cluster"
  },
  "serviceUrl" : "https://host-10-100-0-97:7183/cmf/serviceRedirect/hive",
  "serviceState" : "STOPPED",
  "healthSummary" : "DISABLED",
  "healthChecks" : [ {
    "name" : "HIVE_HIVEMETASTORES_HEALTHY",
    "summary" : "DISABLED"
  }, {
    "name" : "HIVE_HIVESERVER2S_HEALTHY",
    "summary" : "DISABLED"
  }, {
    "name" : "HIVE_WEBHCATS_HEALTHY",
    "summary" : "DISABLED"
  } ],
  "configStale" : false
}[elisska@host-10-100-0-97 ~]$ curl -k -u'admin:admin' -X POST -H "Content-Type:application/json" 'https://128.107.17.137:7183/api/v11/clusters/elisska/services/hive/commands/start'
{
  "id" : 1920,
  "name" : "Start",
  "startTime" : "2016-03-24T18:19:18.559Z",
  "active" : true,
  "serviceRef" : {
    "clusterName" : "cluster",
    "serviceName" : "hive"
  }
}[elisska@host-10-100-0-97 ~]$curl -k -u  'admin:admin' 'https://128.107.17.137:7183/api/v1/clusters/elisska/services/hive/'
{
  "name" : "hive",
  "type" : "HIVE",
  "clusterRef" : {
    "clusterName" : "cluster"
  },
  "serviceUrl" : "https://host-10-100-0-97:7183/cmf/serviceRedirect/hive",
  "serviceState" : "STARTED",
  "healthSummary" : "GOOD",
  "healthChecks" : [ {
    "name" : "HIVE_HIVEMETASTORES_HEALTHY",
    "summary" : "GOOD"
  }, {
    "name" : "HIVE_HIVESERVER2S_HEALTHY",
    "summary" : "GOOD"
  }, {
    "name" : "HIVE_WEBHCATS_HEALTHY",
    "summary" : "GOOD"
  } ],
  "configStale" : false
}[elisska@host-10-100-0-97 ~]$
```

