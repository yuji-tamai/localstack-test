# localstack-test

This is for localstack test.

# s3 test

## setting

```bash
awslocal s3 mb s3://sample-bucket

awslocal s3api put-public-access-block --bucket sample-bucket --public-access-block-configuration "BlockPublicAcls=false,IgnorePublicAcls=false,BlockPublicPolicy=false,RestrictPublicBuckets=false"

awslocal s3api put-bucket-policy --bucket sample-bucket --policy file://./localstack/bucket-policy.json

awslocal s3 cp s3/index.html s3://sample-bucket/index.html
```

## access

- http://localhost:4566/sample-bucket/index.html
- http://sample-bucket.s3.localhost.localhost.localstack.cloud:4566/index.html
