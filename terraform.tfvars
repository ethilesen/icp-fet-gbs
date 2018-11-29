sl_username = ""
sl_api_key  = ""
key_name    = []
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
