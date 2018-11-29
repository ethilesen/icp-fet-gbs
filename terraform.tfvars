sl_username = "1706635_no010925@no.ibm.com"
sl_api_key  = "4d5ff5bab664094dd7d69c0bdc01a31895285f73e8b1f727901ed75d091b884e"
key_name    = ["espenthilesen","BjornS","eivinda"]
datacenter  = "osl01"
os_reference_code = "UBUNTU_16_64"
icp_inception_image = "ibmcom/icp-inception:3.1.1"
# Disable most management services except metering, monitoring and logging
disabled_management_services = ["istio", "vulnerability-advisor", "storage-glusterfs", "storage-minio", "custom-metrics-adapter", "image-security-enforcement"]

# Enabling metering, monitoring and logging requires additinal resources,
# so we will enable 1 dedicated management node
mgmt = {
  nodes = "1"
}
boot = {
  nodes= "0"
}
master = {
 nodes="1"
}
proxy = {
 nodes="1"
}
va = {
 nodes="0"
}
worker = {
 nodes="3"
}
