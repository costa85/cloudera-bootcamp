```
{
  "timestamp" : "2016-03-25T17:28:13.684Z",
  "clusters" : [ {
    "name" : "cluster",
    "displayName" : "elisska",
    "version" : "CDH5",
    "fullVersion" : "5.5.1",
    "services" : [ {
      "name" : "hive",
      "type" : "HIVE",
      "config" : {
        "items" : [ {
          "name" : "hive_metastore_database_host",
          "value" : "ip-172-31-33-1.us-west-2.compute.internal"
        }, {
          "name" : "hive_metastore_database_password",
          "value" : "Hive123"
        }, {
          "name" : "mapreduce_yarn_service",
          "value" : "yarn"
        }, {
          "name" : "zookeeper_service",
          "value" : "zookeeper"
        } ]
      },
      "roles" : [ {
        "name" : "hive-GATEWAY-538c8c3ec42975ac494a0e4f5d565b12",
        "type" : "GATEWAY",
        "hostRef" : {
          "hostId" : "i-06cfefc1"
        },
        "config" : {
          "items" : [ ]
        },
        "roleConfigGroupRef" : {
          "roleConfigGroupName" : "hive-GATEWAY-BASE"
        }
      }, {
        "name" : "hive-GATEWAY-6417e6b6e83afb441e147c24beaaba5b",
        "type" : "GATEWAY",
        "hostRef" : {
          "hostId" : "i-2086a7e7"
        },
        "config" : {
          "items" : [ ]
        },
        "roleConfigGroupRef" : {
          "roleConfigGroupName" : "hive-GATEWAY-BASE"
        }
      }, {
        "name" : "hive-GATEWAY-7f451cf1fcfbef56acc7632f67aeee1e",
        "type" : "GATEWAY",
        "hostRef" : {
          "hostId" : "i-84d0f043"
        },
        "config" : {
          "items" : [ ]
        },
        "roleConfigGroupRef" : {
          "roleConfigGroupName" : "hive-GATEWAY-BASE"
        }
      }, {
        "name" : "hive-GATEWAY-b0aa63c500a8a3df8b9edd684f791bb0",
        "type" : "GATEWAY",
        "hostRef" : {
          "hostId" : "i-dfd2f218"
        },
        "config" : {
          "items" : [ ]
        },
        "roleConfigGroupRef" : {
          "roleConfigGroupName" : "hive-GATEWAY-BASE"
        }
      }, {
        "name" : "hive-GATEWAY-cb9b623b19d9a70e7537d622f5e3e646",
        "type" : "GATEWAY",
        "hostRef" : {
          "hostId" : "i-41d0f086"
        },
        "config" : {
          "items" : [ ]
        },
        "roleConfigGroupRef" : {
          "roleConfigGroupName" : "hive-GATEWAY-BASE"
        }
      }, {
        "name" : "hive-HIVEMETASTORE-538c8c3ec42975ac494a0e4f5d565b12",
        "type" : "HIVEMETASTORE",
        "hostRef" : {
          "hostId" : "i-06cfefc1"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "dyvuyaiobjnifagttbjl9epid"
          } ]
        },
        "roleConfigGroupRef" : {
          "roleConfigGroupName" : "hive-HIVEMETASTORE-BASE"
        }
      }, {
        "name" : "hive-HIVESERVER2-538c8c3ec42975ac494a0e4f5d565b12",
        "type" : "HIVESERVER2",
        "hostRef" : {
          "hostId" : "i-06cfefc1"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "2p6z707y9w5mtcpeqr0lj8u7z"
          } ]
        },
        "roleConfigGroupRef" : {
          "roleConfigGroupName" : "hive-HIVESERVER2-BASE"
        }
      }, {
        "name" : "hive-WEBHCAT-7f451cf1fcfbef56acc7632f67aeee1e",
        "type" : "WEBHCAT",
        "hostRef" : {
          "hostId" : "i-84d0f043"
        },
        "config" : {
          "items" : [ {
            "name" : "hive_webhcat_secret_key",
            "value" : "l10IOMjgs8G7TBkLszfXQri456AjDV"
          }, {
            "name" : "role_jceks_password",
            "value" : "7tvh199sjpgo2h587tm5oorxs"
          } ]
        },
        "roleConfigGroupRef" : {
          "roleConfigGroupName" : "hive-WEBHCAT-BASE"
        }
      } ],
      "displayName" : "Hive",
      "roleConfigGroups" : [ {
        "name" : "hive-GATEWAY-BASE",
        "displayName" : "Gateway Default Group",
        "roleType" : "GATEWAY",
        "base" : true,
        "serviceRef" : {
          "clusterName" : "cluster",
          "serviceName" : "hive"
        },
        "config" : {
          "items" : [ ]
        }
      }, {
        "name" : "hive-HIVEMETASTORE-BASE",
        "displayName" : "Hive Metastore Server Default Group",
        "roleType" : "HIVEMETASTORE",
        "base" : true,
        "serviceRef" : {
          "clusterName" : "cluster",
          "serviceName" : "hive"
        },
        "config" : {
          "items" : [ {
            "name" : "hive_metastore_java_heapsize",
            "value" : "2996830208"
          } ]
        }
      }, {
        "name" : "hive-HIVESERVER2-BASE",
        "displayName" : "HiveServer2 Default Group",
        "roleType" : "HIVESERVER2",
        "base" : true,
        "serviceRef" : {
          "clusterName" : "cluster",
          "serviceName" : "hive"
        },
        "config" : {
          "items" : [ {
            "name" : "hiveserver2_java_heapsize",
            "value" : "1515192320"
          } ]
        }
      }, {
        "name" : "hive-WEBHCAT-BASE",
        "displayName" : "WebHCat Server Default Group",
        "roleType" : "WEBHCAT",
        "base" : true,
        "serviceRef" : {
          "clusterName" : "cluster",
          "serviceName" : "hive"
        },
        "config" : {
          "items" : [ {
            "name" : "hive_webhcat_java_heapsize",
            "value" : "180355072"
          } ]
        }
      } ],
      "replicationSchedules" : [ ]
    }, {
      "name" : "zookeeper",
      "type" : "ZOOKEEPER",
      "config" : {
        "items" : [ ]
      },
      "roles" : [ {
        "name" : "zookeeper-SERVER-538c8c3ec42975ac494a0e4f5d565b12",
        "type" : "SERVER",
        "hostRef" : {
          "hostId" : "i-06cfefc1"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "8g7g2lgob6ta774f5c5w8palw"
          }, {
            "name" : "serverId",
            "value" : "3"
          } ]
        },
        "roleConfigGroupRef" : {
          "roleConfigGroupName" : "zookeeper-SERVER-BASE"
        }
      }, {
        "name" : "zookeeper-SERVER-7f451cf1fcfbef56acc7632f67aeee1e",
        "type" : "SERVER",
        "hostRef" : {
          "hostId" : "i-84d0f043"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "9bdwiryhfxg9eqw5e5ularffm"
          }, {
            "name" : "serverId",
            "value" : "2"
          } ]
        },
        "roleConfigGroupRef" : {
          "roleConfigGroupName" : "zookeeper-SERVER-BASE"
        }
      }, {
        "name" : "zookeeper-SERVER-cb9b623b19d9a70e7537d622f5e3e646",
        "type" : "SERVER",
        "hostRef" : {
          "hostId" : "i-41d0f086"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "1aq7c8o94wxozzlxz9m8fthff"
          }, {
            "name" : "serverId",
            "value" : "1"
          } ]
        },
        "roleConfigGroupRef" : {
          "roleConfigGroupName" : "zookeeper-SERVER-BASE"
        }
      } ],
      "displayName" : "ZooKeeper",
      "roleConfigGroups" : [ {
        "name" : "zookeeper-SERVER-BASE",
        "displayName" : "Server Default Group",
        "roleType" : "SERVER",
        "base" : true,
        "serviceRef" : {
          "clusterName" : "cluster",
          "serviceName" : "zookeeper"
        },
        "config" : {
          "items" : [ {
            "name" : "dataDir",
            "value" : "/data/01/zookeeper"
          }, {
            "name" : "dataLogDir",
            "value" : "/data/01/zookeeper"
          }, {
            "name" : "zookeeper_server_java_heapsize",
            "value" : "403701760"
          } ]
        }
      } ]
    }, {
      "name" : "hue",
      "type" : "HUE",
      "config" : {
        "items" : [ {
          "name" : "hive_service",
          "value" : "hive"
        }, {
          "name" : "hue_webhdfs",
          "value" : "hdfs-HTTPFS-6417e6b6e83afb441e147c24beaaba5b"
        }, {
          "name" : "oozie_service",
          "value" : "oozie"
        }, {
          "name" : "zookeeper_service",
          "value" : "zookeeper"
        } ]
      },
      "roles" : [ {
        "name" : "hue-HUE_SERVER-6417e6b6e83afb441e147c24beaaba5b",
        "type" : "HUE_SERVER",
        "hostRef" : {
          "hostId" : "i-2086a7e7"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "6tdx21m414aoxjpoxo8g2f8g4"
          }, {
            "name" : "secret_key",
            "value" : "8EiUn8Tqv1yWMfIPqqlT2v3zl7112T"
          } ]
        },
        "roleConfigGroupRef" : {
          "roleConfigGroupName" : "hue-HUE_SERVER-BASE"
        }
      } ],
      "displayName" : "Hue",
      "roleConfigGroups" : [ {
        "name" : "hue-HUE_LOAD_BALANCER-BASE",
        "displayName" : "Load Balancer Default Group",
        "roleType" : "HUE_LOAD_BALANCER",
        "base" : true,
        "serviceRef" : {
          "clusterName" : "cluster",
          "serviceName" : "hue"
        },
        "config" : {
          "items" : [ ]
        }
      }, {
        "name" : "hue-HUE_SERVER-BASE",
        "displayName" : "Hue Server Default Group",
        "roleType" : "HUE_SERVER",
        "base" : true,
        "serviceRef" : {
          "clusterName" : "cluster",
          "serviceName" : "hue"
        },
        "config" : {
          "items" : [ ]
        }
      }, {
        "name" : "hue-KT_RENEWER-BASE",
        "displayName" : "Kerberos Ticket Renewer Default Group",
        "roleType" : "KT_RENEWER",
        "base" : true,
        "serviceRef" : {
          "clusterName" : "cluster",
          "serviceName" : "hue"
        },
        "config" : {
          "items" : [ ]
        }
      } ]
    }, {
      "name" : "oozie",
      "type" : "OOZIE",
      "config" : {
        "items" : [ {
          "name" : "hive_service",
          "value" : "hive"
        }, {
          "name" : "mapreduce_yarn_service",
          "value" : "yarn"
        }, {
          "name" : "zookeeper_service",
          "value" : "zookeeper"
        } ]
      },
      "roles" : [ {
        "name" : "oozie-OOZIE_SERVER-cb9b623b19d9a70e7537d622f5e3e646",
        "type" : "OOZIE_SERVER",
        "hostRef" : {
          "hostId" : "i-41d0f086"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "1fqa5rpy3r4nesfgm3xlbilvk"
          } ]
        },
        "roleConfigGroupRef" : {
          "roleConfigGroupName" : "oozie-OOZIE_SERVER-BASE"
        }
      } ],
      "displayName" : "Oozie",
      "roleConfigGroups" : [ {
        "name" : "oozie-OOZIE_SERVER-BASE",
        "displayName" : "Oozie Server Default Group",
        "roleType" : "OOZIE_SERVER",
        "base" : true,
        "serviceRef" : {
          "clusterName" : "cluster",
          "serviceName" : "oozie"
        },
        "config" : {
          "items" : [ {
            "name" : "oozie_data_dir",
            "value" : "/data/01/oozie/data"
          }, {
            "name" : "oozie_database_host",
            "value" : "ip-172-31-33-1.us-west-2.compute.internal"
          }, {
            "name" : "oozie_database_password",
            "value" : "Oozie123"
          }, {
            "name" : "oozie_database_type",
            "value" : "mysql"
          }, {
            "name" : "oozie_database_user",
            "value" : "oozie"
          }, {
            "name" : "oozie_java_heapsize",
            "value" : "722468864"
          } ]
        }
      } ]
    }, {
      "name" : "yarn",
      "type" : "YARN",
      "config" : {
        "items" : [ {
          "name" : "hdfs_service",
          "value" : "hdfs"
        }, {
          "name" : "rm_dirty",
          "value" : "true"
        }, {
          "name" : "zk_authorization_secret_key",
          "value" : "r9OcypD3xFfs3KEdpqXj1hEPD6qgjT"
        }, {
          "name" : "zookeeper_service",
          "value" : "zookeeper"
        } ]
      },
      "roles" : [ {
        "name" : "yarn-GATEWAY-6417e6b6e83afb441e147c24beaaba5b",
        "type" : "GATEWAY",
        "hostRef" : {
          "hostId" : "i-2086a7e7"
        },
        "config" : {
          "items" : [ ]
        },
        "roleConfigGroupRef" : {
          "roleConfigGroupName" : "yarn-GATEWAY-BASE"
        }
      }, {
        "name" : "yarn-JOBHISTORY-b0aa63c500a8a3df8b9edd684f791bb0",
        "type" : "JOBHISTORY",
        "hostRef" : {
          "hostId" : "i-dfd2f218"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "2rz6tc5xvyuv607euf682vf8i"
          } ]
        },
        "roleConfigGroupRef" : {
          "roleConfigGroupName" : "yarn-JOBHISTORY-BASE"
        }
      }, {
        "name" : "yarn-NODEMANAGER-538c8c3ec42975ac494a0e4f5d565b12",
        "type" : "NODEMANAGER",
        "hostRef" : {
          "hostId" : "i-06cfefc1"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "bdk7gbvk3quap12qo5clzhbov"
          } ]
        },
        "roleConfigGroupRef" : {
          "roleConfigGroupName" : "yarn-NODEMANAGER-BASE"
        }
      }, {
        "name" : "yarn-NODEMANAGER-7f451cf1fcfbef56acc7632f67aeee1e",
        "type" : "NODEMANAGER",
        "hostRef" : {
          "hostId" : "i-84d0f043"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "c0i952xjzg0hytwe3bd5c6g6"
          } ]
        },
        "roleConfigGroupRef" : {
          "roleConfigGroupName" : "yarn-NODEMANAGER-1"
        }
      }, {
        "name" : "yarn-NODEMANAGER-b0aa63c500a8a3df8b9edd684f791bb0",
        "type" : "NODEMANAGER",
        "hostRef" : {
          "hostId" : "i-dfd2f218"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "dfd0axvzwooroyte6xzpue95r"
          } ]
        },
        "roleConfigGroupRef" : {
          "roleConfigGroupName" : "yarn-NODEMANAGER-3"
        }
      }, {
        "name" : "yarn-NODEMANAGER-cb9b623b19d9a70e7537d622f5e3e646",
        "type" : "NODEMANAGER",
        "hostRef" : {
          "hostId" : "i-41d0f086"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "eb42om7owq1fexbu97xpe9g00"
          } ]
        },
        "roleConfigGroupRef" : {
          "roleConfigGroupName" : "yarn-NODEMANAGER-2"
        }
      }, {
        "name" : "yarn-RESOURCEMANAGER-b0aa63c500a8a3df8b9edd684f791bb0",
        "type" : "RESOURCEMANAGER",
        "hostRef" : {
          "hostId" : "i-dfd2f218"
        },
        "config" : {
          "items" : [ {
            "name" : "rm_id",
            "value" : "58"
          }, {
            "name" : "role_jceks_password",
            "value" : "ci02vhwanevojy0ffkjqc6byp"
          } ]
        },
        "roleConfigGroupRef" : {
          "roleConfigGroupName" : "yarn-RESOURCEMANAGER-BASE"
        }
      } ],
      "displayName" : "YARN (MR2 Included)",
      "roleConfigGroups" : [ {
        "name" : "yarn-GATEWAY-BASE",
        "displayName" : "Gateway Default Group",
        "roleType" : "GATEWAY",
        "base" : true,
        "serviceRef" : {
          "clusterName" : "cluster",
          "serviceName" : "yarn"
        },
        "config" : {
          "items" : [ {
            "name" : "mapred_reduce_tasks",
            "value" : "8"
          }, {
            "name" : "mapred_submit_replication",
            "value" : "2"
          } ]
        }
      }, {
        "name" : "yarn-JOBHISTORY-BASE",
        "displayName" : "JobHistory Server Default Group",
        "roleType" : "JOBHISTORY",
        "base" : true,
        "serviceRef" : {
          "clusterName" : "cluster",
          "serviceName" : "yarn"
        },
        "config" : {
          "items" : [ {
            "name" : "mr2_jobhistory_java_heapsize",
            "value" : "722468864"
          } ]
        }
      }, {
        "name" : "yarn-NODEMANAGER-1",
        "displayName" : "NodeManager Group 1",
        "roleType" : "NODEMANAGER",
        "base" : false,
        "serviceRef" : {
          "clusterName" : "cluster",
          "serviceName" : "yarn"
        },
        "config" : {
          "items" : [ {
            "name" : "node_manager_java_heapsize",
            "value" : "657457152"
          }, {
            "name" : "yarn_nodemanager_heartbeat_interval_ms",
            "value" : "100"
          }, {
            "name" : "yarn_nodemanager_local_dirs",
            "value" : "/data/01/yarn/nm"
          }, {
            "name" : "yarn_nodemanager_resource_cpu_vcores",
            "value" : "4"
          }, {
            "name" : "yarn_nodemanager_resource_memory_mb",
            "value" : "5275"
          } ]
        }
      }, {
        "name" : "yarn-NODEMANAGER-2",
        "displayName" : "NodeManager Group 2",
        "roleType" : "NODEMANAGER",
        "base" : false,
        "serviceRef" : {
          "clusterName" : "cluster",
          "serviceName" : "yarn"
        },
        "config" : {
          "items" : [ {
            "name" : "node_manager_java_heapsize",
            "value" : "722468864"
          }, {
            "name" : "yarn_nodemanager_heartbeat_interval_ms",
            "value" : "100"
          }, {
            "name" : "yarn_nodemanager_local_dirs",
            "value" : "/data/01/yarn/nm"
          }, {
            "name" : "yarn_nodemanager_resource_cpu_vcores",
            "value" : "4"
          }, {
            "name" : "yarn_nodemanager_resource_memory_mb",
            "value" : "5732"
          } ]
        }
      }, {
        "name" : "yarn-NODEMANAGER-3",
        "displayName" : "NodeManager Group 3",
        "roleType" : "NODEMANAGER",
        "base" : false,
        "serviceRef" : {
          "clusterName" : "cluster",
          "serviceName" : "yarn"
        },
        "config" : {
          "items" : [ {
            "name" : "node_manager_java_heapsize",
            "value" : "722468864"
          }, {
            "name" : "yarn_nodemanager_heartbeat_interval_ms",
            "value" : "100"
          }, {
            "name" : "yarn_nodemanager_local_dirs",
            "value" : "/data/01/yarn/nm"
          }, {
            "name" : "yarn_nodemanager_resource_cpu_vcores",
            "value" : "4"
          }, {
            "name" : "yarn_nodemanager_resource_memory_mb",
            "value" : "5732"
          } ]
        }
      }, {
        "name" : "yarn-NODEMANAGER-BASE",
        "displayName" : "NodeManager Default Group",
        "roleType" : "NODEMANAGER",
        "base" : true,
        "serviceRef" : {
          "clusterName" : "cluster",
          "serviceName" : "yarn"
        },
        "config" : {
          "items" : [ {
            "name" : "node_manager_java_heapsize",
            "value" : "403701760"
          }, {
            "name" : "yarn_nodemanager_heartbeat_interval_ms",
            "value" : "100"
          }, {
            "name" : "yarn_nodemanager_local_dirs",
            "value" : "/data/01/yarn/nm"
          }, {
            "name" : "yarn_nodemanager_resource_cpu_vcores",
            "value" : "4"
          }, {
            "name" : "yarn_nodemanager_resource_memory_mb",
            "value" : "3496"
          } ]
        }
      }, {
        "name" : "yarn-RESOURCEMANAGER-BASE",
        "displayName" : "ResourceManager Default Group",
        "roleType" : "RESOURCEMANAGER",
        "base" : true,
        "serviceRef" : {
          "clusterName" : "cluster",
          "serviceName" : "yarn"
        },
        "config" : {
          "items" : [ {
            "name" : "resource_manager_java_heapsize",
            "value" : "722468864"
          }, {
            "name" : "yarn_scheduler_maximum_allocation_mb",
            "value" : "5732"
          }, {
            "name" : "yarn_scheduler_maximum_allocation_vcores",
            "value" : "4"
          } ]
        }
      } ]
    }, {
      "name" : "hdfs",
      "type" : "HDFS",
      "config" : {
        "items" : [ {
          "name" : "dfs_ha_fencing_cloudera_manager_secret_key",
          "value" : "x7i0EQwrVlFfx8NNH7BhUgdWgkprOP"
        }, {
          "name" : "fc_authorization_secret_key",
          "value" : "h0yjJ2XDbUwV8YpO0m1qRMC1qTq3Rn"
        }, {
          "name" : "http_auth_signature_secret",
          "value" : "dScmEMawdCjBuB2QJPBIVT7XjTuyR0"
        }, {
          "name" : "rm_dirty",
          "value" : "true"
        }, {
          "name" : "zookeeper_service",
          "value" : "zookeeper"
        } ]
      },
      "roles" : [ {
        "name" : "hdfs-BALANCER-6417e6b6e83afb441e147c24beaaba5b",
        "type" : "BALANCER",
        "hostRef" : {
          "hostId" : "i-2086a7e7"
        },
        "config" : {
          "items" : [ ]
        },
        "roleConfigGroupRef" : {
          "roleConfigGroupName" : "hdfs-BALANCER-BASE"
        }
      }, {
        "name" : "hdfs-DATANODE-538c8c3ec42975ac494a0e4f5d565b12",
        "type" : "DATANODE",
        "hostRef" : {
          "hostId" : "i-06cfefc1"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "cxi4byejxsbp2pvgoy8maspnw"
          } ]
        },
        "roleConfigGroupRef" : {
          "roleConfigGroupName" : "hdfs-DATANODE-2"
        }
      }, {
        "name" : "hdfs-DATANODE-7f451cf1fcfbef56acc7632f67aeee1e",
        "type" : "DATANODE",
        "hostRef" : {
          "hostId" : "i-84d0f043"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "94x1ad05pi7uux2t5pd60as9e"
          } ]
        },
        "roleConfigGroupRef" : {
          "roleConfigGroupName" : "hdfs-DATANODE-3"
        }
      }, {
        "name" : "hdfs-DATANODE-b0aa63c500a8a3df8b9edd684f791bb0",
        "type" : "DATANODE",
        "hostRef" : {
          "hostId" : "i-dfd2f218"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "72dh972rcpoaa8jtdm6yszcxe"
          } ]
        },
        "roleConfigGroupRef" : {
          "roleConfigGroupName" : "hdfs-DATANODE-1"
        }
      }, {
        "name" : "hdfs-DATANODE-cb9b623b19d9a70e7537d622f5e3e646",
        "type" : "DATANODE",
        "hostRef" : {
          "hostId" : "i-41d0f086"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "msgmig8afi886tujiv2rxi7d"
          } ]
        },
        "roleConfigGroupRef" : {
          "roleConfigGroupName" : "hdfs-DATANODE-BASE"
        }
      }, {
        "name" : "hdfs-HTTPFS-6417e6b6e83afb441e147c24beaaba5b",
        "type" : "HTTPFS",
        "hostRef" : {
          "hostId" : "i-2086a7e7"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "55bz32fq24pb9kipj2jlry2y5"
          } ]
        },
        "roleConfigGroupRef" : {
          "roleConfigGroupName" : "hdfs-HTTPFS-BASE"
        }
      }, {
        "name" : "hdfs-NAMENODE-7f451cf1fcfbef56acc7632f67aeee1e",
        "type" : "NAMENODE",
        "hostRef" : {
          "hostId" : "i-84d0f043"
        },
        "config" : {
          "items" : [ {
            "name" : "namenode_id",
            "value" : "61"
          }, {
            "name" : "role_jceks_password",
            "value" : "5kt0twt673c3yz7xuwmx7t9up"
          } ]
        },
        "roleConfigGroupRef" : {
          "roleConfigGroupName" : "hdfs-NAMENODE-BASE"
        }
      }, {
        "name" : "hdfs-SECONDARYNAMENODE-7f451cf1fcfbef56acc7632f67aeee1e",
        "type" : "SECONDARYNAMENODE",
        "hostRef" : {
          "hostId" : "i-84d0f043"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "30fz6b5b7i33nocjck1wruvto"
          } ]
        },
        "roleConfigGroupRef" : {
          "roleConfigGroupName" : "hdfs-SECONDARYNAMENODE-BASE"
        }
      } ],
      "displayName" : "HDFS",
      "roleConfigGroups" : [ {
        "name" : "hdfs-BALANCER-BASE",
        "displayName" : "Balancer Default Group",
        "roleType" : "BALANCER",
        "base" : true,
        "serviceRef" : {
          "clusterName" : "cluster",
          "serviceName" : "hdfs"
        },
        "config" : {
          "items" : [ ]
        }
      }, {
        "name" : "hdfs-DATANODE-1",
        "displayName" : "DataNode Group 1",
        "roleType" : "DATANODE",
        "base" : false,
        "serviceRef" : {
          "clusterName" : "cluster",
          "serviceName" : "hdfs"
        },
        "config" : {
          "items" : [ {
            "name" : "datanode_java_heapsize",
            "value" : "722468864"
          }, {
            "name" : "dfs_data_dir_list",
            "value" : "/data/01/dfs/dn"
          }, {
            "name" : "dfs_datanode_du_reserved",
            "value" : "3962512998"
          }, {
            "name" : "dfs_datanode_max_locked_memory",
            "value" : "2820669440"
          } ]
        }
      }, {
        "name" : "hdfs-DATANODE-2",
        "displayName" : "DataNode Group 2",
        "roleType" : "DATANODE",
        "base" : false,
        "serviceRef" : {
          "clusterName" : "cluster",
          "serviceName" : "hdfs"
        },
        "config" : {
          "items" : [ {
            "name" : "datanode_java_heapsize",
            "value" : "403701760"
          }, {
            "name" : "dfs_data_dir_list",
            "value" : "/data/01/dfs/dn"
          }, {
            "name" : "dfs_datanode_du_reserved",
            "value" : "3962512998"
          }, {
            "name" : "dfs_datanode_max_locked_memory",
            "value" : "1480589312"
          } ]
        }
      }, {
        "name" : "hdfs-DATANODE-3",
        "displayName" : "DataNode Group 3",
        "roleType" : "DATANODE",
        "base" : false,
        "serviceRef" : {
          "clusterName" : "cluster",
          "serviceName" : "hdfs"
        },
        "config" : {
          "items" : [ {
            "name" : "datanode_java_heapsize",
            "value" : "657457152"
          }, {
            "name" : "dfs_data_dir_list",
            "value" : "/data/01/dfs/dn"
          }, {
            "name" : "dfs_datanode_du_reserved",
            "value" : "3962512998"
          }, {
            "name" : "dfs_datanode_max_locked_memory",
            "value" : "2546991104"
          } ]
        }
      }, {
        "name" : "hdfs-DATANODE-BASE",
        "displayName" : "DataNode Default Group",
        "roleType" : "DATANODE",
        "base" : true,
        "serviceRef" : {
          "clusterName" : "cluster",
          "serviceName" : "hdfs"
        },
        "config" : {
          "items" : [ {
            "name" : "datanode_java_heapsize",
            "value" : "722468864"
          }, {
            "name" : "dfs_data_dir_list",
            "value" : "/data/01/dfs/dn"
          }, {
            "name" : "dfs_datanode_du_reserved",
            "value" : "3962512998"
          }, {
            "name" : "dfs_datanode_max_locked_memory",
            "value" : "2820669440"
          } ]
        }
      }, {
        "name" : "hdfs-FAILOVERCONTROLLER-BASE",
        "displayName" : "Failover Controller Default Group",
        "roleType" : "FAILOVERCONTROLLER",
        "base" : true,
        "serviceRef" : {
          "clusterName" : "cluster",
          "serviceName" : "hdfs"
        },
        "config" : {
          "items" : [ ]
        }
      }, {
        "name" : "hdfs-GATEWAY-BASE",
        "displayName" : "Gateway Default Group",
        "roleType" : "GATEWAY",
        "base" : true,
        "serviceRef" : {
          "clusterName" : "cluster",
          "serviceName" : "hdfs"
        },
        "config" : {
          "items" : [ {
            "name" : "dfs_client_use_trash",
            "value" : "true"
          } ]
        }
      }, {
        "name" : "hdfs-HTTPFS-BASE",
        "displayName" : "HttpFS Default Group",
        "roleType" : "HTTPFS",
        "base" : true,
        "serviceRef" : {
          "clusterName" : "cluster",
          "serviceName" : "hdfs"
        },
        "config" : {
          "items" : [ ]
        }
      }, {
        "name" : "hdfs-JOURNALNODE-BASE",
        "displayName" : "JournalNode Default Group",
        "roleType" : "JOURNALNODE",
        "base" : true,
        "serviceRef" : {
          "clusterName" : "cluster",
          "serviceName" : "hdfs"
        },
        "config" : {
          "items" : [ ]
        }
      }, {
        "name" : "hdfs-NAMENODE-BASE",
        "displayName" : "NameNode Default Group",
        "roleType" : "NAMENODE",
        "base" : true,
        "serviceRef" : {
          "clusterName" : "cluster",
          "serviceName" : "hdfs"
        },
        "config" : {
          "items" : [ {
            "name" : "dfs_name_dir_list",
            "value" : "/data/01/dfs/nn"
          }, {
            "name" : "dfs_namenode_servicerpc_address",
            "value" : "8022"
          }, {
            "name" : "namenode_java_heapsize",
            "value" : "657457152"
          } ]
        }
      }, {
        "name" : "hdfs-NFSGATEWAY-BASE",
        "displayName" : "NFS Gateway Default Group",
        "roleType" : "NFSGATEWAY",
        "base" : true,
        "serviceRef" : {
          "clusterName" : "cluster",
          "serviceName" : "hdfs"
        },
        "config" : {
          "items" : [ ]
        }
      }, {
        "name" : "hdfs-SECONDARYNAMENODE-BASE",
        "displayName" : "SecondaryNameNode Default Group",
        "roleType" : "SECONDARYNAMENODE",
        "base" : true,
        "serviceRef" : {
          "clusterName" : "cluster",
          "serviceName" : "hdfs"
        },
        "config" : {
          "items" : [ {
            "name" : "fs_checkpoint_dir_list",
            "value" : "/data/01/dfs/snn"
          }, {
            "name" : "secondary_namenode_java_heapsize",
            "value" : "657457152"
          } ]
        }
      } ],
      "replicationSchedules" : [ ],
      "snapshotPolicies" : [ ]
    }, {
      "name" : "spark_on_yarn",
      "type" : "SPARK_ON_YARN",
      "config" : {
        "items" : [ {
          "name" : "yarn_service",
          "value" : "yarn"
        } ]
      },
      "roles" : [ {
        "name" : "spar40365358-SPARK_YARN_HISTORY_SERVER-cb9b623b19d9a70e7537d622f",
        "type" : "SPARK_YARN_HISTORY_SERVER",
        "hostRef" : {
          "hostId" : "i-41d0f086"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "a90llmxq4ladu9agswsdceoy8"
          } ]
        },
        "roleConfigGroupRef" : {
          "roleConfigGroupName" : "spark_on_yarn-SPARK_YARN_HISTORY_SERVER-BASE"
        }
      }, {
        "name" : "spark_on_yarn-GATEWAY-6417e6b6e83afb441e147c24beaaba5b",
        "type" : "GATEWAY",
        "hostRef" : {
          "hostId" : "i-2086a7e7"
        },
        "config" : {
          "items" : [ ]
        },
        "roleConfigGroupRef" : {
          "roleConfigGroupName" : "spark_on_yarn-GATEWAY-BASE"
        }
      } ],
      "displayName" : "Spark",
      "roleConfigGroups" : [ {
        "name" : "spark_on_yarn-GATEWAY-BASE",
        "displayName" : "Gateway Default Group",
        "roleType" : "GATEWAY",
        "base" : true,
        "serviceRef" : {
          "clusterName" : "cluster",
          "serviceName" : "spark_on_yarn"
        },
        "config" : {
          "items" : [ ]
        }
      }, {
        "name" : "spark_on_yarn-SPARK_YARN_HISTORY_SERVER-BASE",
        "displayName" : "History Server Default Group",
        "roleType" : "SPARK_YARN_HISTORY_SERVER",
        "base" : true,
        "serviceRef" : {
          "clusterName" : "cluster",
          "serviceName" : "spark_on_yarn"
        },
        "config" : {
          "items" : [ ]
        }
      } ]
    } ],
    "parcels" : [ {
      "product" : "CDH",
      "version" : "5.5.1-1.cdh5.5.1.p0.11",
      "stage" : "DISTRIBUTED",
      "clusterRef" : {
        "clusterName" : "cluster"
      }
    }, {
      "product" : "CDH",
      "version" : "5.5.1-1.cdh5.5.1.p0.11",
      "stage" : "ACTIVATED",
      "clusterRef" : {
        "clusterName" : "cluster"
      }
    } ]
  } ],
  "hosts" : [ {
    "hostId" : "i-06cfefc1",
    "ipAddress" : "172.31.33.1",
    "hostname" : "ip-172-31-33-1.us-west-2.compute.internal",
    "rackId" : "/default",
    "config" : {
      "items" : [ ]
    }
  }, {
    "hostId" : "i-84d0f043",
    "ipAddress" : "172.31.42.173",
    "hostname" : "ip-172-31-42-173.us-west-2.compute.internal",
    "rackId" : "/default",
    "config" : {
      "items" : [ ]
    }
  }, {
    "hostId" : "i-41d0f086",
    "ipAddress" : "172.31.44.155",
    "hostname" : "ip-172-31-44-155.us-west-2.compute.internal",
    "rackId" : "/default",
    "config" : {
      "items" : [ ]
    }
  }, {
    "hostId" : "i-2086a7e7",
    "ipAddress" : "172.31.44.233",
    "hostname" : "ip-172-31-44-233.us-west-2.compute.internal",
    "rackId" : "/default",
    "config" : {
      "items" : [ ]
    }
  }, {
    "hostId" : "i-dfd2f218",
    "ipAddress" : "172.31.46.70",
    "hostname" : "ip-172-31-46-70.us-west-2.compute.internal",
    "rackId" : "/default",
    "config" : {
      "items" : [ ]
    }
  } ],
  "users" : [ {
    "name" : "__cloudera_internal_user__mgmt-ACTIVITYMONITOR-6417e6b6e83afb441e147c24beaaba5b",
    "roles" : [ "ROLE_USER" ],
    "pwHash" : "98509f146ec6dd2db31414db33e1ed72f1d4412b1657979c49b5c08cdbf04a89",
    "pwSalt" : 3740292735676317196,
    "pwLogin" : true
  }, {
    "name" : "__cloudera_internal_user__mgmt-EVENTSERVER-6417e6b6e83afb441e147c24beaaba5b",
    "roles" : [ "ROLE_USER" ],
    "pwHash" : "5da7bc9b7deeeda92039105a032c7443ed226f8423b0c6a11c0cbc8010d83b2b",
    "pwSalt" : 7383890213718693059,
    "pwLogin" : true
  }, {
    "name" : "__cloudera_internal_user__mgmt-HOSTMONITOR-6417e6b6e83afb441e147c24beaaba5b",
    "roles" : [ "ROLE_USER" ],
    "pwHash" : "53761bee012e1f6f48c97073af0eb3caca3917cf17f28a61ef9cf040334226ff",
    "pwSalt" : -5331757965915683502,
    "pwLogin" : true
  }, {
    "name" : "__cloudera_internal_user__mgmt-REPORTSMANAGER-6417e6b6e83afb441e147c24beaaba5b",
    "roles" : [ "ROLE_USER" ],
    "pwHash" : "546a39bb84130f189181538bc2843b50729c1cafca8f90ddef4b6f72005211ea",
    "pwSalt" : -4311873873265904215,
    "pwLogin" : true
  }, {
    "name" : "__cloudera_internal_user__mgmt-SERVICEMONITOR-6417e6b6e83afb441e147c24beaaba5b",
    "roles" : [ "ROLE_USER" ],
    "pwHash" : "d3b149d45a309af03110142909735d8ccba7ef4d11459a25747f0d7f77ae5547",
    "pwSalt" : -3124438317662712454,
    "pwLogin" : true
  }, {
    "name" : "admin",
    "roles" : [ "ROLE_ADMIN" ],
    "pwHash" : "7ebf954ac16daa314f8e96634d855e4a3cec249d005d1abd1b6d3938239268d5",
    "pwSalt" : -8599818175190405752,
    "pwLogin" : true
  } ],
  "versionInfo" : {
    "version" : "5.5.3",
    "buildUser" : "jenkins",
    "buildTimestamp" : "20160216-1045",
    "gitHash" : "d7746acd0dc9054eeb350b73a781e38124736d9f",
    "snapshot" : false
  },
  "managementService" : {
    "name" : "mgmt",
    "type" : "MGMT",
    "config" : {
      "items" : [ ]
    },
    "roles" : [ {
      "name" : "mgmt-ACTIVITYMONITOR-6417e6b6e83afb441e147c24beaaba5b",
      "type" : "ACTIVITYMONITOR",
      "hostRef" : {
        "hostId" : "i-2086a7e7"
      },
      "config" : {
        "items" : [ {
          "name" : "role_jceks_password",
          "value" : "1tvke3ucifav7qbxbmszmzb70"
        } ]
      },
      "roleConfigGroupRef" : {
        "roleConfigGroupName" : "mgmt-ACTIVITYMONITOR-BASE"
      }
    }, {
      "name" : "mgmt-ALERTPUBLISHER-6417e6b6e83afb441e147c24beaaba5b",
      "type" : "ALERTPUBLISHER",
      "hostRef" : {
        "hostId" : "i-2086a7e7"
      },
      "config" : {
        "items" : [ {
          "name" : "role_jceks_password",
          "value" : "2mb8ss3f0qq1e35k2fla157hf"
        } ]
      },
      "roleConfigGroupRef" : {
        "roleConfigGroupName" : "mgmt-ALERTPUBLISHER-BASE"
      }
    }, {
      "name" : "mgmt-EVENTSERVER-6417e6b6e83afb441e147c24beaaba5b",
      "type" : "EVENTSERVER",
      "hostRef" : {
        "hostId" : "i-2086a7e7"
      },
      "config" : {
        "items" : [ {
          "name" : "role_jceks_password",
          "value" : "a8792ibilb9cuoh3lgfvr0mkv"
        } ]
      },
      "roleConfigGroupRef" : {
        "roleConfigGroupName" : "mgmt-EVENTSERVER-BASE"
      }
    }, {
      "name" : "mgmt-HOSTMONITOR-6417e6b6e83afb441e147c24beaaba5b",
      "type" : "HOSTMONITOR",
      "hostRef" : {
        "hostId" : "i-2086a7e7"
      },
      "config" : {
        "items" : [ {
          "name" : "role_jceks_password",
          "value" : "7zrdrqd32q9510y79dt91baa3"
        } ]
      },
      "roleConfigGroupRef" : {
        "roleConfigGroupName" : "mgmt-HOSTMONITOR-BASE"
      }
    }, {
      "name" : "mgmt-REPORTSMANAGER-6417e6b6e83afb441e147c24beaaba5b",
      "type" : "REPORTSMANAGER",
      "hostRef" : {
        "hostId" : "i-2086a7e7"
      },
      "config" : {
        "items" : [ {
          "name" : "role_jceks_password",
          "value" : "cinbna8uu4ykgk9uyzjco8e68"
        } ]
      },
      "roleConfigGroupRef" : {
        "roleConfigGroupName" : "mgmt-REPORTSMANAGER-BASE"
      }
    }, {
      "name" : "mgmt-SERVICEMONITOR-6417e6b6e83afb441e147c24beaaba5b",
      "type" : "SERVICEMONITOR",
      "hostRef" : {
        "hostId" : "i-2086a7e7"
      },
      "config" : {
        "items" : [ {
          "name" : "role_jceks_password",
          "value" : "e5is2b1lhob0doa49w8ac2w3n"
        } ]
      },
      "roleConfigGroupRef" : {
        "roleConfigGroupName" : "mgmt-SERVICEMONITOR-BASE"
      }
    } ],
    "displayName" : "Cloudera Management Service",
    "roleConfigGroups" : [ {
      "name" : "mgmt-ACTIVITYMONITOR-BASE",
      "displayName" : "Activity Monitor Default Group",
      "roleType" : "ACTIVITYMONITOR",
      "base" : true,
      "serviceRef" : {
        "serviceName" : "mgmt"
      },
      "config" : {
        "items" : [ {
          "name" : "firehose_database_host",
          "value" : "ip-172-31-33-1.us-west-2.compute.internal"
        }, {
          "name" : "firehose_database_name",
          "value" : "amon"
        }, {
          "name" : "firehose_database_password",
          "value" : "Amon123"
        }, {
          "name" : "firehose_database_user",
          "value" : "amon"
        } ]
      }
    }, {
      "name" : "mgmt-ALERTPUBLISHER-BASE",
      "displayName" : "Alert Publisher Default Group",
      "roleType" : "ALERTPUBLISHER",
      "base" : true,
      "serviceRef" : {
        "serviceName" : "mgmt"
      },
      "config" : {
        "items" : [ ]
      }
    }, {
      "name" : "mgmt-EVENTSERVER-BASE",
      "displayName" : "Event Server Default Group",
      "roleType" : "EVENTSERVER",
      "base" : true,
      "serviceRef" : {
        "serviceName" : "mgmt"
      },
      "config" : {
        "items" : [ ]
      }
    }, {
      "name" : "mgmt-HOSTMONITOR-BASE",
      "displayName" : "Host Monitor Default Group",
      "roleType" : "HOSTMONITOR",
      "base" : true,
      "serviceRef" : {
        "serviceName" : "mgmt"
      },
      "config" : {
        "items" : [ {
          "name" : "firehose_heapsize",
          "value" : "268435456"
        }, {
          "name" : "firehose_non_java_memory_bytes",
          "value" : "1610612736"
        }, {
          "name" : "firehose_storage_dir",
          "value" : "/data/01/cloudera-host-monitor"
        } ]
      }
    }, {
      "name" : "mgmt-NAVIGATOR-BASE",
      "displayName" : "Navigator Audit Server Default Group",
      "roleType" : "NAVIGATOR",
      "base" : true,
      "serviceRef" : {
        "serviceName" : "mgmt"
      },
      "config" : {
        "items" : [ ]
      }
    }, {
      "name" : "mgmt-NAVIGATORMETASERVER-BASE",
      "displayName" : "Navigator Metadata Server Default Group",
      "roleType" : "NAVIGATORMETASERVER",
      "base" : true,
      "serviceRef" : {
        "serviceName" : "mgmt"
      },
      "config" : {
        "items" : [ ]
      }
    }, {
      "name" : "mgmt-REPORTSMANAGER-BASE",
      "displayName" : "Reports Manager Default Group",
      "roleType" : "REPORTSMANAGER",
      "base" : true,
      "serviceRef" : {
        "serviceName" : "mgmt"
      },
      "config" : {
        "items" : [ {
          "name" : "headlamp_database_host",
          "value" : "ip-172-31-33-1.us-west-2.compute.internal"
        }, {
          "name" : "headlamp_database_name",
          "value" : "rman"
        }, {
          "name" : "headlamp_database_password",
          "value" : "Rman123"
        }, {
          "name" : "headlamp_database_user",
          "value" : "rman"
        } ]
      }
    }, {
      "name" : "mgmt-SERVICEMONITOR-BASE",
      "displayName" : "Service Monitor Default Group",
      "roleType" : "SERVICEMONITOR",
      "base" : true,
      "serviceRef" : {
        "serviceName" : "mgmt"
      },
      "config" : {
        "items" : [ {
          "name" : "firehose_heapsize",
          "value" : "268435456"
        }, {
          "name" : "firehose_non_java_memory_bytes",
          "value" : "1610612736"
        }, {
          "name" : "firehose_storage_dir",
          "value" : "/data/01/cloudera-service-monitor"
        } ]
      }
    } ]
  },
  "managerSettings" : {
    "items" : [ {
      "name" : "CLUSTER_STATS_START",
      "value" : "10/25/2012 21:20"
    }, {
      "name" : "PUBLIC_CLOUD_STATUS",
      "value" : "ON_PUBLIC_CLOUD"
    }, {
      "name" : "REMOTE_PARCEL_REPO_URLS",
      "value" : "https://archive.cloudera.com/cdh5/parcels/5.5.1/,https://archive.cloudera.com/cdh4/parcels/latest/,https://archive.cloudera.com/impala/parcels/latest/,https://archive.cloudera.com/search/parcels/latest/,https://archive.cloudera.com/accumulo/parcels/1.4/,https://archive.cloudera.com/accumulo-c5/parcels/latest/,https://archive.cloudera.com/kafka/parcels/latest/,https://archive.cloudera.com/navigator-keytrustee5/parcels/latest/,https://archive.cloudera.com/spark/parcels/latest/,https://archive.cloudera.com/sqoop-connectors/parcels/latest/"
    } ]
  },
  "allHostsConfig" : {
    "items" : [ ]
  },
  "peers" : [ ],
  "hostTemplates" : {
    "items" : [ {
      "name" : "Template - 2",
      "clusterRef" : {
        "clusterName" : "cluster"
      },
      "roleConfigGroupRefs" : [ {
        "roleConfigGroupName" : "hive-HIVESERVER2-BASE"
      }, {
        "roleConfigGroupName" : "hive-HIVEMETASTORE-BASE"
      }, {
        "roleConfigGroupName" : "hive-GATEWAY-BASE"
      }, {
        "roleConfigGroupName" : "hdfs-DATANODE-2"
      }, {
        "roleConfigGroupName" : "zookeeper-SERVER-BASE"
      }, {
        "roleConfigGroupName" : "yarn-NODEMANAGER-BASE"
      } ]
    }, {
      "name" : "Template - 3",
      "clusterRef" : {
        "clusterName" : "cluster"
      },
      "roleConfigGroupRefs" : [ {
        "roleConfigGroupName" : "hdfs-NAMENODE-BASE"
      }, {
        "roleConfigGroupName" : "hdfs-SECONDARYNAMENODE-BASE"
      }, {
        "roleConfigGroupName" : "yarn-NODEMANAGER-1"
      }, {
        "roleConfigGroupName" : "hive-WEBHCAT-BASE"
      }, {
        "roleConfigGroupName" : "hdfs-DATANODE-3"
      }, {
        "roleConfigGroupName" : "hive-GATEWAY-BASE"
      }, {
        "roleConfigGroupName" : "zookeeper-SERVER-BASE"
      } ]
    }, {
      "name" : "Template - 1",
      "clusterRef" : {
        "clusterName" : "cluster"
      },
      "roleConfigGroupRefs" : [ {
        "roleConfigGroupName" : "hdfs-DATANODE-BASE"
      }, {
        "roleConfigGroupName" : "oozie-OOZIE_SERVER-BASE"
      }, {
        "roleConfigGroupName" : "hive-GATEWAY-BASE"
      }, {
        "roleConfigGroupName" : "yarn-NODEMANAGER-2"
      }, {
        "roleConfigGroupName" : "zookeeper-SERVER-BASE"
      } ]
    } ]
  }
}
```
