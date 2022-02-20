# caddy-aws-ready

AWS ready caddy server image impliments, extra optional modules to interact with dynamoDB or S3 for certmagic storage and allow caddy to be a reverse proxy for S3 which brings extra features to static hosting.

### caddy.storage.dynamodb
[https://github.com/silinternational/certmagic-storage-dynamodb](https://github.com/silinternational/certmagic-storage-dynamodb)

caddy.storage.dynamodb implements certmagic.Storage to facilitate storage of certificates in DynamoDB for a clustered environment. Also implements certmagic.Locker to facilitate locking and unlocking of cert data during storage

```json
{
	"table": "",
	"aws_endpoint": "",
	"aws_region": "",
	"aws_disable_ssl": false,
	"lock_timeout": 0,
	"lock_polling_interval": 0
}
```
#### Field List

__table__
- There are no docs for this property.

__aws_endpoint__
- There are no docs for this property.

__aws_region__
- There are no docs for this property.

__aws_disable_ssl__
- There are no docs for this property.

__lock_timeout__
- Duration can be an integer or a string. An integer is interpreted as nanoseconds. If a string, it is a Go time.Duration value such as 300ms, 1.5h, or 2h45m; valid units are ns, us/µs, ms, s, m, h, and d.

__lock_polling_interval__
- Duration can be an integer or a string. An integer is interpreted as nanoseconds. If a string, it is a Go time.Duration value such as 300ms, 1.5h, or 2h45m; valid units are ns, us/µs, ms, s, m, h, and d.


### http.handlers.s3proxy 
[https://github.com/lindenlab/caddy-s3-proxy](https://github.com/lindenlab/caddy-s3-proxy)

http.handlers.s3proxy implements a proxy to return, set, delete or browse objects from S3

```json
{
	"root": "",
	"region": "",
	"bucket": "",
	"endpoint": "",
	"index_names": [""],
	"error_pages": {
		0: ""
	},
	"default_error_page": "",
	"force_path_style": false,
	"use_accelerate": false
}
```

#### Field List

__root__
- The path to the root of the site. Default is {http.vars.root} if set, Or if not set the value is "" - meaning use the whole path as a key.

__region__
- The AWS region the bucket is hosted in

__bucket__
- The name of the S3 bucket

__endpoint__
- Use non-standard endpoint for S3

__index_names__
- The names of files to try as index files if a folder is requested.

__error_pages__
- Mapping of HTTP error status to S3 keys or pass through option.

__default_error_page__
- S3 key to a default error page or pass through option.

__force_path_style__
- Set this to true to force the request to use path-style addressing.

__use_accelerate__
- Set this to true to enable S3 Accelerate feature.

### certmagic-s3
[https://github.com/techknowlogick/certmagic-s3](https://github.com/techknowlogick/certmagic-s3)

```json
{
	"host": "",
	"bucket": "",
	"access_key": "",
	"secret_key": "",
	"prefix": "",
	"encryption_key": ""
}
```

#### Field List

__host__
There are no docs for this property.

__bucket__
There are no docs for this property.

__access_key__
There are no docs for this property.

__secret_key__
There are no docs for this property.

__prefix__
There are no docs for this property.

__encryption_key__
EncryptionKey is optional. If you do not wish to encrypt your certficates and key inside the S3 bucket, leave it empty.
