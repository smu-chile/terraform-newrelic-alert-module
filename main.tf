//CONFIGURACION DE ALERTA EN NEW RELIC//

//Creación de politica de alerta//
resource "newrelic_alert_policy" "alertpolicylogs" {
  name                = data.consul_keys.input.var.newrelic_policyName
  incident_preference = "PER_CONDITION"
}

//Condición para ejecutar alerta//
resource "newrelic_nrql_alert_condition" "nrql_alert_condition" {
  account_id                   = data.consul_keys.input.var.account-id
  policy_id                    = newrelic_alert_policy.alertpolicylogs.id
  type                         = "static"
  name                         = data.consul_keys.input.var.alertName
  description                  = data.consul_keys.input.var.alertDescription
  runbook_url                  = data.consul_keys.input.var.runbookURL
  enabled                      = true
  violation_time_limit_seconds = 18000
  value_function               = "single_value"

  fill_option = "static"
  fill_value  = 0

  aggregation_window = 300

  nrql {
    query             = data.consul_keys.input.var.query
    evaluation_offset = 1
  }

  critical {
    operator              = data.consul_keys.input.var.criticalOperator
    threshold             = data.consul_keys.input.var.criticalThreshold
    threshold_duration    = data.consul_keys.input.var.criticalThresholdDuration
    threshold_occurrences = data.consul_keys.input.var.criticalThresholdOccurrences
  }
}

resource "newrelic_alert_channel" "alert_chanel" {
  name = data.consul_keys.input.var.alert_channelName
  type = "slack"

  config {
    url     = data.consul_keys.input.var.alert_slackUrl
    channel = data.consul_keys.input.var.alert_slackChannel
  }
}


//Asociación de canal de alerta con política de alerta//
resource "newrelic_alert_policy_channel" "policy_channel" {
  policy_id   = newrelic_alert_policy.alertpolicylogs.id
  channel_ids = [newrelic_alert_channel.alert_chanel.id]
}

