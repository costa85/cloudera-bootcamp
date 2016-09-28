**How to access cluster nodes**

*NOTE: I am using not AWS but another cloud environment*

*Edge* node public IP is `128.107.17.137`.

Please use this command to connect to the node:

```
ssh cloud-user@128.107.17.137 -i cdh.pem -p 2222
```

The RSA key is here: [cdh.pem](cdh.pem)

Once connected to the edge node, you can ssh without password to any node in the cluster like this:

```
[cloud-user@host-10-100-0-97 ~]$ ssh cloud-user@host-10-100-0-98
Last login: Tue Mar 22 02:56:56 2016 from 10.100.0.97
[cloud-user@host-10-100-0-98 ~]$
```

**Public IPs of all nodes**

```
128.107.18.60 host-10-100-0-103
128.107.17.143 host-10-100-0-100
128.107.17.142 host-10-100-0-99
128.107.17.139 host-10-100-0-98
128.107.17.137 host-10-100-0-97
```


