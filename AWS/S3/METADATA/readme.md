## create a bucket

```sh 
aws s3 mb s3:\\metadata-fun-ab-144543

```
### create a new file

echo "hello mars" > hello.txt


## upload file with metadata

aws s3api put-object --bucket metadata-fun-ab-144543 --key hello.txt --body hello.txt --metadata planet=mars 

## get metadata through head object 

aws s3api head-object --bucket metadata-fun-ab-144543 --key hello.txt 

### cleanup 

aws s3 s3:\\metadata-fun-ab-144543\hello.txt
aws s3 rb s3:\\metadata-fun-ab-144543