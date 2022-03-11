provider "newrelic" {
  account_id = data.consul_keys.input.var.account-id
  api_key    = data.consul_keys.input.var.api-key
  region     = data.consul_keys.input.var.newrelic-region
}