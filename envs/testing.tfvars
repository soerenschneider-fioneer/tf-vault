ldap_url = "ldap://localhost:389"
ldap_userdn = "cn=testing,cn=vault,cn=org"
ldap_groupdn = "ou=groups,cn=testing,cn=vault,cn=org"

aws_hosted_zone = "Z11111111111111111111"
agent_cidrs = [
  "192.168.0.0/16",
]

acme_clients = {
}

prometheus_token_ttl = 31536000

audit_file_path = "/tmp/vault.log"

occult = {
  "test" : {
    secret_name = "test",
    token_cidr  = [
    ],
    token_ttl = 9600
  }
}

dyndns_server_cidrs = [
  "0.0.0.0/0"
]

acme_server_cidrs = [
  "0.0.0.0/0"
]

prometheus_token_cidrs = [
  "0.0.0.0/0"
]
