storage "consul" {
  address = "consul-server-bootstrap:8500"
  path    = "vault/"
}

service_registration "consul" {
  address = "consul-server-bootstrap:8500"
}

listener "tcp" {
  address     = "0.0.0.0:8200"
  tls_disable = true
}

ui = true
api_addr = "http://127.0.0.1:8200"
