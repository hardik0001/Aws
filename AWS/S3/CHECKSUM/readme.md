## create a new s3 bucket

```
md
aws s3 mb s3://checksums-example-ab-54545

```

## create a file that will do a checksum on 

```
echo "hello earth!" >myfile.txt

```

### get a checksum of a file for md5

md5sum myfile.txt
