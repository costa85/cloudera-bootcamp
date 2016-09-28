**The output of https://128.107.17.137:7183/api/v2/cm/deployment :**

```
{
  "timestamp" : "2016-03-24T17:51:17.489Z",
  "clusters" : [ {
    "name" : "elisska",
    "version" : "CDH5",
    "services" : [ {
      "name" : "zookeeper",
      "type" : "ZOOKEEPER",
      "config" : {
        "roleTypeConfigs" : [ {
          "roleType" : "SERVER",
          "items" : [ {
            "name" : "dataDir",
            "value" : "/data/01/zookeeper"
          }, {
            "name" : "dataLogDir",
            "value" : "/data/01/zookeeper"
          }, {
            "name" : "zookeeper_server_quorum_membership_detection_window",
            "value" : "6"
          } ]
        } ],
        "items" : [ {
          "name" : "enableSecurity",
          "value" : "true"
        } ]
      },
      "roles" : [ {
        "name" : "zookeeper-SERVER-5b8161c8d488d6237a740bf34ad4fbe1",
        "type" : "SERVER",
        "hostRef" : {
          "hostId" : "3a13edad-f4ec-4929-b585-6697f62bdadf"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "c3kv8eieedt8d727fgosey3f"
          }, {
            "name" : "serverId",
            "value" : "3"
          } ]
        }
      }, {
        "name" : "zookeeper-SERVER-e94113d5d59be5f03ba33ce834495f7c",
        "type" : "SERVER",
        "hostRef" : {
          "hostId" : "faf0ac38-1a37-4169-82ca-495e21ff15dd"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "chg6apx6jvq6fugk7yafthmko"
          }, {
            "name" : "serverId",
            "value" : "4"
          } ]
        }
      }, {
        "name" : "zookeeper-SERVER-f573d5cf9966aec0502504cf7f542d61",
        "type" : "SERVER",
        "hostRef" : {
          "hostId" : "675cccda-79e5-4cb9-b2bc-ab292fc5e253"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "celufuxupsn1at7ejhj85t9va"
          }, {
            "name" : "serverId",
            "value" : "1"
          } ]
        }
      } ],
      "displayName" : "ZooKeeper"
    }, {
      "name" : "sqoop_client",
      "type" : "SQOOP_CLIENT",
      "config" : {
        "roleTypeConfigs" : [ ],
        "items" : [ ]
      },
      "roles" : [ {
        "name" : "sqoop_client-GATEWAY-e5d54c7d8ae8967f853c53929ccbe99d",
        "type" : "GATEWAY",
        "hostRef" : {
          "hostId" : "3f0b4e9d-7096-45f9-8a88-1b6be0fc9130"
        },
        "config" : {
          "items" : [ ]
        }
      } ],
      "displayName" : "Sqoop 1 Client"
    }, {
      "name" : "hdfs",
      "type" : "HDFS",
      "config" : {
        "roleTypeConfigs" : [ {
          "roleType" : "DATANODE",
          "items" : [ {
            "name" : "datanode_java_heapsize",
            "value" : "688914432"
          }, {
            "name" : "dfs_data_dir_list",
            "value" : "/data/01/dfs/dn"
          }, {
            "name" : "dfs_datanode_du_reserved",
            "value" : "10555519795"
          }, {
            "name" : "dfs_datanode_http_port",
            "value" : "1006"
          }, {
            "name" : "dfs_datanode_max_locked_memory",
            "value" : "3188719616"
          }, {
            "name" : "dfs_datanode_port",
            "value" : "1004"
          }, {
            "name" : "rm_cpu_shares",
            "value" : "500"
          }, {
            "name" : "rm_io_weight",
            "value" : "250"
          } ]
        }, {
          "roleType" : "GATEWAY",
          "items" : [ {
            "name" : "dfs_client_read_shortcircuit",
            "value" : "true"
          }, {
            "name" : "dfs_client_use_trash",
            "value" : "true"
          } ]
        }, {
          "roleType" : "JOURNALNODE",
          "items" : [ {
            "name" : "dfs_journalnode_edits_dir",
            "value" : "/data/01/dfs/jnn"
          } ]
        }, {
          "roleType" : "NAMENODE",
          "items" : [ {
            "name" : "dfs_name_dir_list",
            "value" : "/data/01/dfs/nn"
          }, {
            "name" : "dfs_namenode_servicerpc_address",
            "value" : "8022"
          } ]
        }, {
          "roleType" : "SECONDARYNAMENODE",
          "items" : [ {
            "name" : "fs_checkpoint_dir_list",
            "value" : "/data/01/dfs/snn"
          } ]
        } ],
        "items" : [ {
          "name" : "dfs_encrypt_data_transfer_algorithm",
          "value" : "AES/CTR/NoPadding"
        }, {
          "name" : "dfs_ha_fencing_cloudera_manager_secret_key",
          "value" : "tU3SYgNJ1SgHIti21Pg9MgrQJ5XOyl"
        }, {
          "name" : "dfs_ha_fencing_methods",
          "value" : "shell(true)"
        }, {
          "name" : "dfs_namenode_acls_enabled",
          "value" : "true"
        }, {
          "name" : "fc_authorization_secret_key",
          "value" : "OdZQaLueV28605bVd871anzu17llgN"
        }, {
          "name" : "hadoop_security_authentication",
          "value" : "kerberos"
        }, {
          "name" : "hadoop_security_authorization",
          "value" : "true"
        }, {
          "name" : "http_auth_signature_secret",
          "value" : "VtNcpyt2xZcemjHPK2xfsPqbduTLjI"
        }, {
          "name" : "rm_dirty",
          "value" : "false"
        }, {
          "name" : "rm_last_allocation_percentage",
          "value" : "25"
        }, {
          "name" : "zookeeper_service",
          "value" : "zookeeper"
        } ]
      },
      "roles" : [ {
        "name" : "hdfs-BALANCER-e5d54c7d8ae8967f853c53929ccbe99d",
        "type" : "BALANCER",
        "hostRef" : {
          "hostId" : "3f0b4e9d-7096-45f9-8a88-1b6be0fc9130"
        },
        "config" : {
          "items" : [ ]
        }
      }, {
        "name" : "hdfs-DATANODE-5b8161c8d488d6237a740bf34ad4fbe1",
        "type" : "DATANODE",
        "hostRef" : {
          "hostId" : "3a13edad-f4ec-4929-b585-6697f62bdadf"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "69k7vebklpor4d437blpbl6s"
          } ]
        }
      }, {
        "name" : "hdfs-DATANODE-6f74d7d73a0cda3d008c6aea4acdaeab",
        "type" : "DATANODE",
        "hostRef" : {
          "hostId" : "3cca4537-869c-4732-9f14-5acebba232df"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "bo33en5327h7pgic136tcufwq"
          } ]
        }
      }, {
        "name" : "hdfs-DATANODE-e94113d5d59be5f03ba33ce834495f7c",
        "type" : "DATANODE",
        "hostRef" : {
          "hostId" : "faf0ac38-1a37-4169-82ca-495e21ff15dd"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "5kj8ad5tr0m10cikzw04zsv1f"
          } ]
        }
      }, {
        "name" : "hdfs-DATANODE-f573d5cf9966aec0502504cf7f542d61",
        "type" : "DATANODE",
        "hostRef" : {
          "hostId" : "675cccda-79e5-4cb9-b2bc-ab292fc5e253"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "bh8kygs6f8cxzl8pc002a7100"
          } ]
        }
      }, {
        "name" : "hdfs-FAILOVERCONTROLLER-e94113d5d59be5f03ba33ce834495f7c",
        "type" : "FAILOVERCONTROLLER",
        "hostRef" : {
          "hostId" : "faf0ac38-1a37-4169-82ca-495e21ff15dd"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "4kwisxlxmu0nv46nyzmswzqng"
          } ]
        }
      }, {
        "name" : "hdfs-FAILOVERCONTROLLER-f573d5cf9966aec0502504cf7f542d61",
        "type" : "FAILOVERCONTROLLER",
        "hostRef" : {
          "hostId" : "675cccda-79e5-4cb9-b2bc-ab292fc5e253"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "bai6aejkm2zp2t7h39si4gugx"
          } ]
        }
      }, {
        "name" : "hdfs-GATEWAY-e5d54c7d8ae8967f853c53929ccbe99d",
        "type" : "GATEWAY",
        "hostRef" : {
          "hostId" : "3f0b4e9d-7096-45f9-8a88-1b6be0fc9130"
        },
        "config" : {
          "items" : [ ]
        }
      }, {
        "name" : "hdfs-HTTPFS-f573d5cf9966aec0502504cf7f542d61",
        "type" : "HTTPFS",
        "hostRef" : {
          "hostId" : "675cccda-79e5-4cb9-b2bc-ab292fc5e253"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "96uvdxlo7wryt8ycq5x30d2y6"
          } ]
        }
      }, {
        "name" : "hdfs-JOURNALNODE-6f74d7d73a0cda3d008c6aea4acdaeab",
        "type" : "JOURNALNODE",
        "hostRef" : {
          "hostId" : "3cca4537-869c-4732-9f14-5acebba232df"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "1faizluvggylskb2r0feac9yi"
          } ]
        }
      }, {
        "name" : "hdfs-JOURNALNODE-e94113d5d59be5f03ba33ce834495f7c",
        "type" : "JOURNALNODE",
        "hostRef" : {
          "hostId" : "faf0ac38-1a37-4169-82ca-495e21ff15dd"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "e4wlzqrgip3sfpunnaputxu5h"
          } ]
        }
      }, {
        "name" : "hdfs-JOURNALNODE-f573d5cf9966aec0502504cf7f542d61",
        "type" : "JOURNALNODE",
        "hostRef" : {
          "hostId" : "675cccda-79e5-4cb9-b2bc-ab292fc5e253"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "9vj06ikypbho77pb53qobox6t"
          } ]
        }
      }, {
        "name" : "hdfs-NAMENODE-e94113d5d59be5f03ba33ce834495f7c",
        "type" : "NAMENODE",
        "hostRef" : {
          "hostId" : "faf0ac38-1a37-4169-82ca-495e21ff15dd"
        },
        "config" : {
          "items" : [ {
            "name" : "autofailover_enabled",
            "value" : "true"
          }, {
            "name" : "dfs_federation_namenode_nameservice",
            "value" : "hdfs"
          }, {
            "name" : "dfs_namenode_quorum_journal_name",
            "value" : "hdfs"
          }, {
            "name" : "namenode_id",
            "value" : "117"
          }, {
            "name" : "role_jceks_password",
            "value" : "3yat5526t53thyfwfyckmo6i3"
          } ]
        }
      }, {
        "name" : "hdfs-NAMENODE-f573d5cf9966aec0502504cf7f542d61",
        "type" : "NAMENODE",
        "hostRef" : {
          "hostId" : "675cccda-79e5-4cb9-b2bc-ab292fc5e253"
        },
        "config" : {
          "items" : [ {
            "name" : "autofailover_enabled",
            "value" : "true"
          }, {
            "name" : "dfs_federation_namenode_nameservice",
            "value" : "hdfs"
          }, {
            "name" : "dfs_namenode_quorum_journal_name",
            "value" : "hdfs"
          }, {
            "name" : "namenode_id",
            "value" : "123"
          }, {
            "name" : "role_jceks_password",
            "value" : "b2m13zib6y0hjxd7wh688qgr1"
          } ]
        }
      } ],
      "displayName" : "HDFS"
    }, {
      "name" : "yarn",
      "type" : "YARN",
      "config" : {
        "roleTypeConfigs" : [ {
          "roleType" : "GATEWAY",
          "items" : [ {
            "name" : "mapred_reduce_tasks",
            "value" : "6"
          }, {
            "name" : "mapred_submit_replication",
            "value" : "2"
          } ]
        }, {
          "roleType" : "JOBHISTORY",
          "items" : [ {
            "name" : "mr2_jobhistory_java_heapsize",
            "value" : "320864256"
          } ]
        }, {
          "roleType" : "NODEMANAGER",
          "items" : [ {
            "name" : "node_manager_java_heapsize",
            "value" : "377487360"
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
            "value" : "3866"
          } ]
        }, {
          "roleType" : "RESOURCEMANAGER",
          "items" : [ {
            "name" : "resource_manager_java_heapsize",
            "value" : "320864256"
          }, {
            "name" : "yarn_scheduler_maximum_allocation_mb",
            "value" : "6997"
          }, {
            "name" : "yarn_scheduler_maximum_allocation_vcores",
            "value" : "3"
          } ]
        } ],
        "items" : [ {
          "name" : "hdfs_service",
          "value" : "hdfs"
        }, {
          "name" : "rm_dirty",
          "value" : "false"
        }, {
          "name" : "rm_last_allocation_percentage",
          "value" : "75"
        }, {
          "name" : "yarn_service_cgroups",
          "value" : "false"
        }, {
          "name" : "yarn_service_lce_always",
          "value" : "false"
        }, {
          "name" : "zk_authorization_secret_key",
          "value" : "rwBIqLxTUpMroFOkfd3x7S6aernPuv"
        }, {
          "name" : "zookeeper_service",
          "value" : "zookeeper"
        } ]
      },
      "roles" : [ {
        "name" : "yarn-GATEWAY-e5d54c7d8ae8967f853c53929ccbe99d",
        "type" : "GATEWAY",
        "hostRef" : {
          "hostId" : "3f0b4e9d-7096-45f9-8a88-1b6be0fc9130"
        },
        "config" : {
          "items" : [ ]
        }
      }, {
        "name" : "yarn-JOBHISTORY-e94113d5d59be5f03ba33ce834495f7c",
        "type" : "JOBHISTORY",
        "hostRef" : {
          "hostId" : "faf0ac38-1a37-4169-82ca-495e21ff15dd"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "en6sea16wfxsp1prltoytm4mu"
          } ]
        }
      }, {
        "name" : "yarn-NODEMANAGER-5b8161c8d488d6237a740bf34ad4fbe1",
        "type" : "NODEMANAGER",
        "hostRef" : {
          "hostId" : "3a13edad-f4ec-4929-b585-6697f62bdadf"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "e4inr2b3ih0gyhi7phdzh03s6"
          } ]
        }
      }, {
        "name" : "yarn-NODEMANAGER-6f74d7d73a0cda3d008c6aea4acdaeab",
        "type" : "NODEMANAGER",
        "hostRef" : {
          "hostId" : "3cca4537-869c-4732-9f14-5acebba232df"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "4gh5jjzbqoc1m0jvzcmf47s9a"
          } ]
        }
      }, {
        "name" : "yarn-NODEMANAGER-e94113d5d59be5f03ba33ce834495f7c",
        "type" : "NODEMANAGER",
        "hostRef" : {
          "hostId" : "faf0ac38-1a37-4169-82ca-495e21ff15dd"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "7c948ko0w6jpn99avws2jxuc6"
          } ]
        }
      }, {
        "name" : "yarn-NODEMANAGER-f573d5cf9966aec0502504cf7f542d61",
        "type" : "NODEMANAGER",
        "hostRef" : {
          "hostId" : "675cccda-79e5-4cb9-b2bc-ab292fc5e253"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "caug0rx62yy1zy29wd1tqe39k"
          } ]
        }
      }, {
        "name" : "yarn-RESOURCEMANAGER-6f74d7d73a0cda3d008c6aea4acdaeab",
        "type" : "RESOURCEMANAGER",
        "hostRef" : {
          "hostId" : "3cca4537-869c-4732-9f14-5acebba232df"
        },
        "config" : {
          "items" : [ {
            "name" : "rm_id",
            "value" : "141"
          }, {
            "name" : "role_jceks_password",
            "value" : "4mri81vci01ykygzh5drbnw9g"
          } ]
        }
      }, {
        "name" : "yarn-RESOURCEMANAGER-e94113d5d59be5f03ba33ce834495f7c",
        "type" : "RESOURCEMANAGER",
        "hostRef" : {
          "hostId" : "faf0ac38-1a37-4169-82ca-495e21ff15dd"
        },
        "config" : {
          "items" : [ {
            "name" : "rm_id",
            "value" : "140"
          }, {
            "name" : "role_jceks_password",
            "value" : "bvog4xdo4waxg921cnrxr8ah9"
          } ]
        }
      } ],
      "displayName" : "YARN (MR2 Included)"
    }, {
      "name" : "hive",
      "type" : "HIVE",
      "config" : {
        "roleTypeConfigs" : [ {
          "roleType" : "HIVEMETASTORE",
          "items" : [ {
            "name" : "hive_metastore_java_heapsize",
            "value" : "52428800"
          } ]
        }, {
          "roleType" : "HIVESERVER2",
          "items" : [ {
            "name" : "hiveserver2_enable_impersonation",
            "value" : "false"
          }, {
            "name" : "hiveserver2_java_heapsize",
            "value" : "52428800"
          } ]
        }, {
          "roleType" : "WEBHCAT",
          "items" : [ {
            "name" : "hive_webhcat_java_heapsize",
            "value" : "52428800"
          } ]
        } ],
        "items" : [ {
          "name" : "hive_metastore_database_host",
          "value" : "host-10-100-0-97"
        }, {
          "name" : "hive_metastore_database_password",
          "value" : "Hive123"
        }, {
          "name" : "mapreduce_yarn_service",
          "value" : "yarn"
        }, {
          "name" : "sentry_service",
          "value" : "sentry"
        }, {
          "name" : "zookeeper_service",
          "value" : "zookeeper"
        } ]
      },
      "roles" : [ {
        "name" : "hive-GATEWAY-e5d54c7d8ae8967f853c53929ccbe99d",
        "type" : "GATEWAY",
        "hostRef" : {
          "hostId" : "3f0b4e9d-7096-45f9-8a88-1b6be0fc9130"
        },
        "config" : {
          "items" : [ ]
        }
      }, {
        "name" : "hive-HIVEMETASTORE-6f74d7d73a0cda3d008c6aea4acdaeab",
        "type" : "HIVEMETASTORE",
        "hostRef" : {
          "hostId" : "3cca4537-869c-4732-9f14-5acebba232df"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "4ajhw1anfcdq1rzmcq64eggg"
          } ]
        }
      }, {
        "name" : "hive-HIVESERVER2-6f74d7d73a0cda3d008c6aea4acdaeab",
        "type" : "HIVESERVER2",
        "hostRef" : {
          "hostId" : "3cca4537-869c-4732-9f14-5acebba232df"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "2aotiv29ty1in2z4ltq78swxw"
          } ]
        }
      }, {
        "name" : "hive-WEBHCAT-6f74d7d73a0cda3d008c6aea4acdaeab",
        "type" : "WEBHCAT",
        "hostRef" : {
          "hostId" : "3cca4537-869c-4732-9f14-5acebba232df"
        },
        "config" : {
          "items" : [ {
            "name" : "hive_webhcat_secret_key",
            "value" : "gg26gBKhn1FGt1EvwXlyLcdfTP3eUq"
          }, {
            "name" : "role_jceks_password",
            "value" : "cvnmn4mlfb0pbetvybq0aaex0"
          } ]
        }
      } ],
      "displayName" : "Hive"
    }, {
      "name" : "impala",
      "type" : "IMPALA",
      "config" : {
        "roleTypeConfigs" : [ {
          "roleType" : "IMPALAD",
          "items" : [ {
            "name" : "impalad_memory_limit",
            "value" : "81788928"
          }, {
            "name" : "rm_cpu_shares",
            "value" : "20"
          }, {
            "name" : "rm_io_weight",
            "value" : "100"
          }, {
            "name" : "scratch_dirs",
            "value" : "/data/01/impala/impalad"
          } ]
        } ],
        "items" : [ {
          "name" : "hdfs_service",
          "value" : "hdfs"
        }, {
          "name" : "hive_service",
          "value" : "hive"
        }, {
          "name" : "llama_am_ha_zk_auth_secret_key",
          "value" : "dU09QyGkE25fZv9zczcxCEsz0rGktR"
        }, {
          "name" : "rm_dirty",
          "value" : "false"
        }, {
          "name" : "rm_last_allocation_percentage",
          "value" : "0"
        }, {
          "name" : "sentry_service",
          "value" : "sentry"
        }, {
          "name" : "yarn_service",
          "value" : ""
        } ]
      },
      "roles" : [ {
        "name" : "impala-CATALOGSERVER-5b8161c8d488d6237a740bf34ad4fbe1",
        "type" : "CATALOGSERVER",
        "hostRef" : {
          "hostId" : "3a13edad-f4ec-4929-b585-6697f62bdadf"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "b0q4ev4z4z08n413o8yui8caz"
          } ]
        }
      }, {
        "name" : "impala-IMPALAD-5b8161c8d488d6237a740bf34ad4fbe1",
        "type" : "IMPALAD",
        "hostRef" : {
          "hostId" : "3a13edad-f4ec-4929-b585-6697f62bdadf"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "3g1zqj0oxokw535vmyn1f570z"
          } ]
        }
      }, {
        "name" : "impala-IMPALAD-6f74d7d73a0cda3d008c6aea4acdaeab",
        "type" : "IMPALAD",
        "hostRef" : {
          "hostId" : "3cca4537-869c-4732-9f14-5acebba232df"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "b25anjaxy82zljcum0d12dzhy"
          } ]
        }
      }, {
        "name" : "impala-IMPALAD-e94113d5d59be5f03ba33ce834495f7c",
        "type" : "IMPALAD",
        "hostRef" : {
          "hostId" : "faf0ac38-1a37-4169-82ca-495e21ff15dd"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "46j5qllxpu934rkw70al9f8u9"
          } ]
        }
      }, {
        "name" : "impala-IMPALAD-f573d5cf9966aec0502504cf7f542d61",
        "type" : "IMPALAD",
        "hostRef" : {
          "hostId" : "675cccda-79e5-4cb9-b2bc-ab292fc5e253"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "9in9uqa2e8z22onvt554oolr0"
          } ]
        }
      }, {
        "name" : "impala-STATESTORE-5b8161c8d488d6237a740bf34ad4fbe1",
        "type" : "STATESTORE",
        "hostRef" : {
          "hostId" : "3a13edad-f4ec-4929-b585-6697f62bdadf"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "b8m978erndqzz6fzp0poyv6qi"
          } ]
        }
      } ],
      "displayName" : "Impala"
    }, {
      "name" : "oozie",
      "type" : "OOZIE",
      "config" : {
        "roleTypeConfigs" : [ {
          "roleType" : "OOZIE_SERVER",
          "items" : [ {
            "name" : "oozie_database_host",
            "value" : "host-10-100-0-97"
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
            "value" : "52428800"
          } ]
        } ],
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
        "name" : "oozie-OOZIE_SERVER-5b8161c8d488d6237a740bf34ad4fbe1",
        "type" : "OOZIE_SERVER",
        "hostRef" : {
          "hostId" : "3a13edad-f4ec-4929-b585-6697f62bdadf"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "cl46lbc700f6akm9l1or9b3kg"
          } ]
        }
      } ],
      "displayName" : "Oozie"
    }, {
      "name" : "sentry",
      "type" : "SENTRY",
      "config" : {
        "roleTypeConfigs" : [ {
          "roleType" : "SENTRY_SERVER",
          "items" : [ {
            "name" : "sentry_server_java_heapsize",
            "value" : "268435456"
          } ]
        } ],
        "items" : [ {
          "name" : "hdfs_service",
          "value" : "hdfs"
        }, {
          "name" : "sentry_server_database_host",
          "value" : "host-10-100-0-97"
        }, {
          "name" : "sentry_server_database_password",
          "value" : "Sentry123"
        }, {
          "name" : "sentry_service_admin_group",
          "value" : "hive,impala,hue,elisska"
        }, {
          "name" : "zookeeper_service",
          "value" : "zookeeper"
        } ]
      },
      "roles" : [ {
        "name" : "sentry-SENTRY_SERVER-5b8161c8d488d6237a740bf34ad4fbe1",
        "type" : "SENTRY_SERVER",
        "hostRef" : {
          "hostId" : "3a13edad-f4ec-4929-b585-6697f62bdadf"
        },
        "config" : {
          "items" : [ {
            "name" : "role_health_suppression_sentry_server_scm_health",
            "value" : "true"
          }, {
            "name" : "role_jceks_password",
            "value" : "ytqqt9oe79k99ljm2s3qupuh"
          } ]
        }
      } ],
      "displayName" : "Sentry"
    }, {
      "name" : "hue",
      "type" : "HUE",
      "config" : {
        "roleTypeConfigs" : [ ],
        "items" : [ {
          "name" : "database_host",
          "value" : "host-10-100-0-97"
        }, {
          "name" : "database_password",
          "value" : "Hue123"
        }, {
          "name" : "database_type",
          "value" : "mysql"
        }, {
          "name" : "hive_service",
          "value" : "hive"
        }, {
          "name" : "hue_webhdfs",
          "value" : "hdfs-HTTPFS-f573d5cf9966aec0502504cf7f542d61"
        }, {
          "name" : "impala_service",
          "value" : "impala"
        }, {
          "name" : "oozie_service",
          "value" : "oozie"
        }, {
          "name" : "sentry_service",
          "value" : "sentry"
        }, {
          "name" : "zookeeper_service",
          "value" : "zookeeper"
        } ]
      },
      "roles" : [ {
        "name" : "hue-HUE_SERVER-e5d54c7d8ae8967f853c53929ccbe99d",
        "type" : "HUE_SERVER",
        "hostRef" : {
          "hostId" : "3f0b4e9d-7096-45f9-8a88-1b6be0fc9130"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "ebds2ii4e9qghx1a4cesj5z82"
          }, {
            "name" : "secret_key",
            "value" : "MS5gPQn5WYioCBoEdEhmyAjjqET36S"
          } ]
        }
      }, {
        "name" : "hue-KT_RENEWER-e5d54c7d8ae8967f853c53929ccbe99d",
        "type" : "KT_RENEWER",
        "hostRef" : {
          "hostId" : "3f0b4e9d-7096-45f9-8a88-1b6be0fc9130"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "eedcsg2pu472irm0d9h16io7g"
          } ]
        }
      } ],
      "displayName" : "Hue"
    } ]
  } ],
  "hosts" : [ {
    "hostId" : "3a13edad-f4ec-4929-b585-6697f62bdadf",
    "ipAddress" : "10.100.0.100",
    "hostname" : "host-10-100-0-100",
    "rackId" : "/default",
    "config" : {
      "items" : [ ]
    }
  }, {
    "hostId" : "faf0ac38-1a37-4169-82ca-495e21ff15dd",
    "ipAddress" : "10.100.0.103",
    "hostname" : "host-10-100-0-103",
    "rackId" : "/default",
    "config" : {
      "items" : [ ]
    }
  }, {
    "hostId" : "3f0b4e9d-7096-45f9-8a88-1b6be0fc9130",
    "ipAddress" : "10.100.0.97",
    "hostname" : "host-10-100-0-97",
    "rackId" : "/default",
    "config" : {
      "items" : [ ]
    }
  }, {
    "hostId" : "675cccda-79e5-4cb9-b2bc-ab292fc5e253",
    "ipAddress" : "10.100.0.98",
    "hostname" : "host-10-100-0-98",
    "rackId" : "/default",
    "config" : {
      "items" : [ ]
    }
  }, {
    "hostId" : "3cca4537-869c-4732-9f14-5acebba232df",
    "ipAddress" : "10.100.0.99",
    "hostname" : "host-10-100-0-99",
    "rackId" : "/default",
    "config" : {
      "items" : [ ]
    }
  } ],
  "users" : [ {
    "name" : "__cloudera_internal_user__c6bbe0e6-8196-4d3b-95f4-9ac1cf131c1c",
    "roles" : [ "ROLE_USER" ],
    "pwHash" : "239f5b2427b565ae20792bf76da821e1aa38f4461a72a174f79d9bb95df191dd",
    "pwSalt" : 7371871735488244753,
    "pwLogin" : true
  }, {
    "name" : "__cloudera_internal_user__mgmt-ACTIVITYMONITOR-e5d54c7d8ae8967f853c53929ccbe99d",
    "roles" : [ "ROLE_USER" ],
    "pwHash" : "3faebc48455827d5e7536bc5b4fd0b45d26e02591208070762d113f851114dd4",
    "pwSalt" : 767313333499977515,
    "pwLogin" : true
  }, {
    "name" : "__cloudera_internal_user__mgmt-EVENTSERVER-e5d54c7d8ae8967f853c53929ccbe99d",
    "roles" : [ "ROLE_USER" ],
    "pwHash" : "dedaefe38c04f4815aedd0be1d536a357f6a5ec2cc25c4af96a2907960562a5a",
    "pwSalt" : -7414776443934523573,
    "pwLogin" : true
  }, {
    "name" : "__cloudera_internal_user__mgmt-HOSTMONITOR-e5d54c7d8ae8967f853c53929ccbe99d",
    "roles" : [ "ROLE_USER" ],
    "pwHash" : "2cd010b575117b0229d880ca44c570ba499b10fe8ab103e64be7fc5d0a2ba318",
    "pwSalt" : -4885587480531635731,
    "pwLogin" : true
  }, {
    "name" : "__cloudera_internal_user__mgmt-REPORTSMANAGER-e5d54c7d8ae8967f853c53929ccbe99d",
    "roles" : [ "ROLE_USER" ],
    "pwHash" : "3f8b7fc74219c2a4a139ab45f7846c1a3831f0c7a826596a3ba10b5441a835ed",
    "pwSalt" : -7658462456561374270,
    "pwLogin" : true
  }, {
    "name" : "__cloudera_internal_user__mgmt-SERVICEMONITOR-e5d54c7d8ae8967f853c53929ccbe99d",
    "roles" : [ "ROLE_USER" ],
    "pwHash" : "795c0ce20da83c8c9cec00371b0452b0ceb17bbb3f7d53fd6aa96962254ce165",
    "pwSalt" : 3919686548655823409,
    "pwLogin" : true
  }, {
    "name" : "admin",
    "roles" : [ "ROLE_ADMIN" ],
    "pwHash" : "49cc58bcd23119b7f05dc762b949a7f6e41100fea6caecc0ad1c144b21a5862d",
    "pwSalt" : 7758952679919356420,
    "pwLogin" : true
  }, {
    "name" : "instructor",
    "roles" : [ "ROLE_OPERATOR" ],
    "pwHash" : "2ea048cc519551c14fd9823dfa03b4fc2c7144c078594ce2f22f65328532738f",
    "pwSalt" : 1984375581268494576,
    "pwLogin" : true
  }, {
    "name" : "minotaur",
    "roles" : [ "ROLE_CONFIGURATOR" ],
    "pwHash" : "54d5aa032aa681500de3097b7dcf4d353904987c22ee034a46a9cbfd816e79da",
    "pwSalt" : 1149445562000815770,
    "pwLogin" : true
  } ],
  "versionInfo" : {
    "version" : "5.6.0",
    "buildUser" : "jenkins",
    "buildTimestamp" : "20160211-1910",
    "gitHash" : "1c2be84380aa23bd5d6993ec300e144c78b37bf2",
    "snapshot" : false
  },
  "managementService" : {
    "name" : "mgmt",
    "type" : "MGMT",
    "config" : {
      "roleTypeConfigs" : [ {
        "roleType" : "ACTIVITYMONITOR",
        "items" : [ {
          "name" : "firehose_database_host",
          "value" : "host-10-100-0-97"
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
      }, {
        "roleType" : "HOSTMONITOR",
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
      }, {
        "roleType" : "REPORTSMANAGER",
        "items" : [ {
          "name" : "headlamp_database_host",
          "value" : "host-10-100-0-97"
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
      }, {
        "roleType" : "SERVICEMONITOR",
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
      } ],
      "items" : [ {
        "name" : "ssl_client_truststore_location",
        "value" : "/usr/java/jdk1.7.0_67-cloudera/jre/lib/security/jssecacerts"
      }, {
        "name" : "ssl_client_truststore_password",
        "value" : "changeit"
      } ]
    },
    "roles" : [ {
      "name" : "mgmt-ACTIVITYMONITOR-e5d54c7d8ae8967f853c53929ccbe99d",
      "type" : "ACTIVITYMONITOR",
      "hostRef" : {
        "hostId" : "3f0b4e9d-7096-45f9-8a88-1b6be0fc9130"
      },
      "config" : {
        "items" : [ {
          "name" : "role_jceks_password",
          "value" : "84ag9upuzbp5luctjcprvbhn4"
        } ]
      }
    }, {
      "name" : "mgmt-ALERTPUBLISHER-e5d54c7d8ae8967f853c53929ccbe99d",
      "type" : "ALERTPUBLISHER",
      "hostRef" : {
        "hostId" : "3f0b4e9d-7096-45f9-8a88-1b6be0fc9130"
      },
      "config" : {
        "items" : [ {
          "name" : "role_jceks_password",
          "value" : "ewrrcfynjm4zx4htrs6ommn8l"
        } ]
      }
    }, {
      "name" : "mgmt-EVENTSERVER-e5d54c7d8ae8967f853c53929ccbe99d",
      "type" : "EVENTSERVER",
      "hostRef" : {
        "hostId" : "3f0b4e9d-7096-45f9-8a88-1b6be0fc9130"
      },
      "config" : {
        "items" : [ {
          "name" : "role_jceks_password",
          "value" : "3pttz7caispxtluf2odgx561o"
        } ]
      }
    }, {
      "name" : "mgmt-HOSTMONITOR-e5d54c7d8ae8967f853c53929ccbe99d",
      "type" : "HOSTMONITOR",
      "hostRef" : {
        "hostId" : "3f0b4e9d-7096-45f9-8a88-1b6be0fc9130"
      },
      "config" : {
        "items" : [ {
          "name" : "role_jceks_password",
          "value" : "a8vffnoq3xikdv105dk61heem"
        } ]
      }
    }, {
      "name" : "mgmt-REPORTSMANAGER-e5d54c7d8ae8967f853c53929ccbe99d",
      "type" : "REPORTSMANAGER",
      "hostRef" : {
        "hostId" : "3f0b4e9d-7096-45f9-8a88-1b6be0fc9130"
      },
      "config" : {
        "items" : [ {
          "name" : "role_jceks_password",
          "value" : "ab2z2flo4prxfc337a3nqk122"
        } ]
      }
    }, {
      "name" : "mgmt-SERVICEMONITOR-e5d54c7d8ae8967f853c53929ccbe99d",
      "type" : "SERVICEMONITOR",
      "hostRef" : {
        "hostId" : "3f0b4e9d-7096-45f9-8a88-1b6be0fc9130"
      },
      "config" : {
        "items" : [ {
          "name" : "role_jceks_password",
          "value" : "d3icnszuocl2qwehr6bsga1mt"
        } ]
      }
    } ],
    "displayName" : "Cloudera Management Service"
  },
  "managerSettings" : {
    "items" : [ {
      "name" : "AD_USE_SIMPLE_AUTH",
      "value" : "false"
    }, {
      "name" : "AGENT_TLS",
      "value" : "true"
    }, {
      "name" : "CLUSTER_STATS_START",
      "value" : "10/26/2012 2:20"
    }, {
      "name" : "KDC_ADMIN_PASSWORD",
      "value" : "BQIAAAA9AAIAB0NNUmVhbG0ADGNsb3VkZXJhLXNjbQAFYWRtaW4AAAABVvMSqQEAFwAQo6aF+JNk\r\n1KUYKwKPvnmsOAAAAE0AAgAHQ01SZWFsbQAMY2xvdWRlcmEtc2NtAAVhZG1pbgAAAAFW8xKpAQAS\r\nACC2ZJ5/+Salop5y1oGBUO6uDNPDBDc37jZ/Tf6eU7LHYgAAAD0AAgAHQ01SZWFsbQAMY2xvdWRl\r\ncmEtc2NtAAVhZG1pbgAAAAFW8xKpAQARABBZaxMT1z+SGVFEK96DcTzCAAAARQACAAdDTVJlYWxt\r\nAAxjbG91ZGVyYS1zY20ABWFkbWluAAAAAVbzEqkBABAAGNaw7FLI4NApPbblbgGJ+MIybewIQHqR\r\nrgAAAD0AAgAHQ01SZWFsbQAMY2xvdWRlcmEtc2NtAAVhZG1pbgAAAAFW8xKqAQAXABCjpoX4k2TU\r\npRgrAo++eaw4AAAANQACAAdDTVJlYWxtAAxjbG91ZGVyYS1zY20ABWFkbWluAAAAAVbzEqoBAAgA\r\nCHnZweVGrq6uAAAANQACAAdDTVJlYWxtAAxjbG91ZGVyYS1zY20ABWFkbWluAAAAAVbzEqoBAAMA\r\nCFGnfM6JmHzLAAAANQACAAdDTVJlYWxtAAxjbG91ZGVyYS1zY20ABWFkbWluAAAAAVbzEqoBAAEA\r\nCFGnfM6JmHzL\r\n"
    }, {
      "name" : "KDC_ADMIN_USER",
      "value" : "cloudera-scm/admin@CMRealm"
    }, {
      "name" : "KDC_HOST",
      "value" : "host-10-100-0-98"
    }, {
      "name" : "KEYSTORE_PASSWORD",
      "value" : "cloudera"
    }, {
      "name" : "KEYSTORE_PATH",
      "value" : "/opt/cloudera/security/jks/cmhost-keystore.jks"
    }, {
      "name" : "KRB_ENC_TYPES",
      "value" : "rc4-hmac aes256-cts aes128-cts des3-hmac-sha1 arcfour-hmac des-hmac-sha1 des-cbc-md5 des-cbc-crc"
    }, {
      "name" : "KRB_MANAGE_KRB5_CONF",
      "value" : "true"
    }, {
      "name" : "MAX_RENEW_LIFE",
      "value" : "604800"
    }, {
      "name" : "PUBLIC_CLOUD_STATUS",
      "value" : "NOT_ON_PUBLIC_CLOUD"
    }, {
      "name" : "REMOTE_PARCEL_REPO_URLS",
      "value" : "http://128.107.17.137/cdh5.6/,https://archive.cloudera.com/cdh4/parcels/latest/,https://archive.cloudera.com/impala/parcels/latest/,https://archive.cloudera.com/search/parcels/latest/,https://archive.cloudera.com/accumulo/parcels/1.4/,https://archive.cloudera.com/accumulo-c5/parcels/latest/,https://archive.cloudera.com/kafka/parcels/latest/,https://archive.cloudera.com/navigator-keytrustee5/parcels/latest/,https://archive.cloudera.com/spark/parcels/latest/,https://archive.cloudera.com/sqoop-connectors/parcels/latest/"
    }, {
      "name" : "SECURITY_REALM",
      "value" : "CMRealm"
    }, {
      "name" : "WEB_TLS",
      "value" : "true"
    } ]
  }
}
```
