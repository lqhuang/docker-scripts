

## dgraph zero

    dgraph zero --help

```
A Dgraph Zero instance manages the Dgraph cluster.  Typically, a single Zero
instance is sufficient for the cluster; however, one can run multiple Zero
instances to achieve high-availability.

Usage:
  dgraph zero [flags]

Flags:
      --datadog.collector string      Send opencensus traces to Datadog. As of now, the trace exporter does not support annotation logs and would discard them.
  -h, --help                          help for zero
      --idx uint                      Unique node index for this server. (default 1)
      --jaeger.collector string       Send opencensus traces to Jaeger.
      --my string                     addr:port of this server, so other Dgraph alphas can talk to this.
      --peer string                   Address of another dgraphzero server.
  -o, --port_offset int               Value added to all listening port numbers. [Grpc=5080, HTTP=6080]
      --rebalance_interval duration   Interval for trying a predicate move. (default 8m0s)
      --replicas int                  How many replicas to run per data shard. The count includes the original shard. (default 1)
      --telemetry                     Send anonymous telemetry data to Dgraph devs. (default true)
      --trace float                   The ratio of queries to trace. (default 1)
  -w, --wal string                    Directory storing WAL. (default "zw")

Global Flags:
      --alsologtostderr                  log to standard error as well as files
      --bindall                          Use 0.0.0.0 instead of localhost to bind to all addresses on local machine. (default true)
      --block_rate int                   Block profiling rate. Must be used along with block profile_mode
      --config string                    Configuration file. Takes precedence over default values, but is overridden to values set with environment variables and flags.
      --cwd string                       Change working directory to the path specified. The parent must exist.
      --expose_trace                     Allow trace endpoint to be accessible from remote
      --log_backtrace_at traceLocation   when logging hits line file:N, emit a stack trace (default :0)
      --log_dir string                   If non-empty, write log files in this directory
      --logtostderr                      log to standard error instead of files
      --profile_mode string              Enable profiling mode, one of [cpu, mem, mutex, block]
  -v, --v Level                          log level for V logs
      --vmodule moduleSpec               comma-separated list of pattern=N settings for file-filtered logging
```

### dgraph alpha

    dgraph alpha --help

```
A Dgraph Alpha instance stores the data. Each Dgraph Alpha is responsible for
storing and serving one data group. If multiple Alphas serve the same group,
they form a Raft group and provide synchronous replication.

Usage:
  dgraph alpha [flags]

Flags:
      --abort_older_than string      Abort any pending transactions older than this duration. The liveness of a transaction is determined by its last mutation. (default "5m")
      --acl_access_ttl duration      The TTL for the access jwt. Enterprise feature. (default 6h0m0s)
      --acl_cache_ttl duration       The interval to refresh the acl cache. Enterprise feature. (default 30s)
      --acl_refresh_ttl duration     The TTL for the refresh jwt. Enterprise feature. (default 720h0m0s)
      --acl_secret_file string       The file that stores the HMAC secret, which is used for signing the JWT and should have at least 32 ASCII characters. Enterprise feature.
      --auth_token string            If set, all Alter requests to Dgraph would need to have this token. The token can be passed as follows: For HTTP requests, in X-Dgraph-AuthToken header. For Grpc, in auth-token key in the context.
      --badger.tables string         [ram, mmap, disk] Specifies how Badger LSM tree is stored. Option sequence consume most to least RAM while providing best to worst read performance respectively. (default "mmap")
      --badger.vlog string           [mmap, disk] Specifies how Badger Value log is stored. mmap consumes more RAM, but provides better performance. (default "mmap")
      --custom_tokenizers string     Comma separated list of tokenizer plugins
      --datadog.collector string     Send opencensus traces to Datadog. As of now, the trace exporter does not support annotation logs and would discard them.
      --encryption_key_file string   The file that stores the encryption key. The key size must be 16, 24, or 32 bytes long. The key size determines the corresponding block size for AES encryption (AES-128, AES-192, and AES-256 respectively). Enterprise feature.
      --export string                Folder in which to store exports. (default "export")
  -h, --help                         help for alpha
      --idx uint                     Optional Raft ID that this Dgraph Alpha will use to join RAFT groups.
      --jaeger.collector string      Send opencensus traces to Jaeger.
  -l, --lru_mb float                 Estimated memory the LRU cache can take. Actual usage by the process would be more than specified here. (default -1)
      --max_retries int              Commits to disk will give up after these number of retries to prevent locking the worker in a failed state. Use -1 to retry infinitely. (default -1)
      --mutations string             Set mutation mode to allow, disallow, or strict. (default "allow")
      --my string                    IP_ADDRESS:PORT of this Dgraph Alpha, so other Dgraph Alphas can talk to this.
      --normalize_node_limit uint    Limit for the maximum number of nodes that can be returned in a query that uses the normalize directive. (default 10000)
      --pending_proposals int        Number of pending mutation proposals. Useful for rate limiting. (default 256)
  -o, --port_offset int              Value added to all listening port numbers. [Internal=7080, HTTP=8080, Grpc=9080]
  -p, --postings string              Directory to store posting lists. (default "p")
      --query_edge_limit uint        Limit for the maximum number of edges that can be returned in a query. This applies to shortest path and recursive queries. (default 1000000)
      --snapshot_after int           Create a new Raft snapshot after this many number of Raft entries. The lower this number, the more frequent snapshot creation would be. Also determines how often Rollups would happen. (default 10000)
      --tls_client_auth string       Enable TLS client authentication (default "VERIFYIFGIVEN")
      --tls_dir string               Path to directory that has TLS certificates and keys.
      --tls_use_system_ca            Include System CA into CA Certs. (default true)
      --trace float                  The ratio of queries to trace. (default 1)
  -w, --wal string                   Directory to store raft write-ahead logs. (default "w")
      --whitelist string             A comma separated list of IP ranges you wish to whitelist for performing admin actions (i.e., --whitelist 127.0.0.1:127.0.0.3,0.0.0.7:0.0.0.9)
  -z, --zero string                  IP_ADDRESS:PORT of a Dgraph Zero. (default "localhost:5080")

Global Flags:
      --alsologtostderr                  log to standard error as well as files
      --bindall                          Use 0.0.0.0 instead of localhost to bind to all addresses on local machine. (default true)
      --block_rate int                   Block profiling rate. Must be used along with block profile_mode
      --config string                    Configuration file. Takes precedence over default values, but is overridden to values set with environment variables and flags.
      --cwd string                       Change working directory to the path specified. The parent must exist.
      --expose_trace                     Allow trace endpoint to be accessible from remote
      --log_backtrace_at traceLocation   when logging hits line file:N, emit a stack trace (default :0)
      --log_dir string                   If non-empty, write log files in this directory
      --logtostderr                      log to standard error instead of files
      --profile_mode string              Enable profiling mode, one of [cpu, mem, mutex, block]
  -v, --v Level                          log level for V logs
      --vmodule moduleSpec               comma-separated list of pattern=N settings for file-filtered logging
```

### dgraph-ratel

    dgraph-ratel --help

```
Usage of dgraph-ratel:
  -addr string
    	Address of the Dgraph server.
  -port int
    	Port on which the ratel server will run. (default 8000)
  -tls_crt string
    	TLS cert for serving HTTPS requests.
  -tls_key string
    	TLS key for serving HTTPS requests.
  -version
    	Prints the version of ratel.
```

### dgraph acl

    dgraph acl mod --help

```
Run Dgraph acl tool to modify a user's password, a user's group list, or agroup's predicate permissions

Usage:
  dgraph acl mod [flags]

Flags:
  -g, --group string        The group whose permission is to be changed
  -l, --group_list string   The list of groups to be set for the user (default "dgraph-unused-group")
  -h, --help                help for mod
  -n, --new_password        Whether to reset password for the user
  -m, --perm int            The acl represented using an integer: 4 for read, 2 for write, and 1 for modify. Use a negative value to remove a predicate from the group
  -p, --pred string         The predicates whose acls are to be changed
  -u, --user string         The user id to be changed

Global Flags:
  -a, --alpha string                     Dgraph Alpha gRPC server address (default "127.0.0.1:9080")
      --alsologtostderr                  log to standard error as well as files
      --bindall                          Use 0.0.0.0 instead of localhost to bind to all addresses on local machine. (default true)
      --block_rate int                   Block profiling rate. Must be used along with block profile_mode
      --config string                    Configuration file. Takes precedence over default values, but is overridden to values set with environment variables and flags.
      --cwd string                       Change working directory to the path specified. The parent must exist.
      --expose_trace                     Allow trace endpoint to be accessible from remote
  -x, --gpassword string                 Groot password to authorize this operation
      --log_backtrace_at traceLocation   when logging hits line file:N, emit a stack trace (default :0)
      --log_dir string                   If non-empty, write log files in this directory
      --logtostderr                      log to standard error instead of files
      --profile_mode string              Enable profiling mode, one of [cpu, mem, mutex, block]
      --tls_cacert string                The CA Cert file used to verify server certificates. Required for enabling TLS.
      --tls_cert string                  (optional) The Cert file provided by the client to the server.
      --tls_key string                   (optional) The private key file provided by the client to the server.
      --tls_server_name string           Used to verify the server hostname.
      --tls_use_system_ca                Include System CA into CA Certs. (default true)
  -v, --v Level                          log level for V logs
      --vmodule moduleSpec               comma-separated list of pattern=N settings for file-filtered logging
```