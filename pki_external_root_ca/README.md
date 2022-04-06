# how to use this module

```shell
# the first step is to build the root CA
> sh 00_build_root.sh 

# after the root CA has been created, run the terraform to create
# the intermediate CAs 1 & 2 and create a CSR to be signed by the root CA
> terraform apply -auto-approve

# now, sign the CSR using the root CA
> sh 01_sign_csr.sh

# concat the signed certificate and the root CA cert
> sh 02_concat.sh

# in the last step, re-run the terraform to import the certificate
> terraform apply -auto-approve
```