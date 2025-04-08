## create a bucket
```sh
aws s3 mb s3://make-bucket-15454

```

## create bucket policy 
```sh

aws s3api put-bucket-policy --bucket s3://make-bucket-15454 --policy file://policy.json
```


## In other account access the bucket
```sh
touch bootcamp.txt

aws s3 cp bootcamp.txt s3://bucket-name-5454
aws s3 ls s3://bucket-name-5454
```

## cleanup
```sh
aws s3 rm s3://bucket-name-5454/bootcamp.txt
aws s3 rb s3://bucket-name-5454
```