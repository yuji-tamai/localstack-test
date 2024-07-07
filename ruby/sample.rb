require 'aws-sdk-s3'

region = "us-east-1"
bucket_name = "sample-bucket"
key_name = "index.html"

Aws.config.update(
  profile: 'localstack',
  endpoint: 'http://localhost:4566', # LocalStackのエンドポイント
  access_key_id: 'test',
  secret_access_key: 'test',
  region: region,
  force_path_style: true,
)

client = Aws::S3::Client.new

body = "<h1>Update by aws-sdk for ruby at #{Time.now}</h1>"

puts "Update index.html: '#{body}'"

# オブジェクトを作成
client.put_object(bucket: bucket_name, key: key_name, body: body, content_type: "text/html")
