# test-deb-packages

### Summary
- This repo demonstrates a private debian package repository hosted in s3.
- The debian packages are built and pushed via github actions

### How to use
1. Install `apt-transport-s3` to enable package repositories hosted in s3
```
sudo apt-get install apt-transport-s3
```
2. Configure apt-transport-s3 with your AWS credentials in `/etc/apt/s3auth.conf`:
```
AccessKeyId = <access_key>
SecretAccessKey = <secret_access_key>
Region = 'us-east-1'
```
3. Add publicly accessible gpg key:
```
curl -s --compressed "https://levy-private-tiered-bucket.s3.amazonaws.com/public_key.pub" | gpg --dearmor | sudo tee /etc/apt/trusted.gpg.d/levy_ppa.gpg >/dev/null
```

4. Update your sources list `/etc/apt/sources.list`:
```
...existing sources

deb s3://levy-private-tiered-bucket/basic/ jammy main
```
