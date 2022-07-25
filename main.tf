//CONFIGURACION DE ALERTA EN NEW RELIC//

//Creación de politica de alerta//
resource "newrelic_alert_policy" "alertpolicylogs" {
  name                = var.newrelic_policyName
  incident_preference = "PER_CONDITION"
}

//Condición para ejecutar alerta//
resource "newrelic_nrql_alert_condition" "nrql_alert_condition" {
  account_id                   = var.account-id
  policy_id                    = newrelic_alert_policy.alertpolicylogs.id
  type                         = var.type
  name                         = var.alertName
  description                  = var.alertDescription
  runbook_url                  = var.runbookURL
  enabled                      = var.enabled
  violation_time_limit_seconds = var.violation_time_limit_seconds
  aggregation_method           = var.aggregation_method
  fill_option                  = var.fill_option
  fill_value                   = var.fill_value

  nrql {
    query = var.query
  }

  critical {
    operator              = var.criticalOperator
    threshold             = var.criticalThreshold
    threshold_duration    = var.criticalThresholdDuration
    threshold_occurrences = var.criticalThresholdOccurrences
  }
}

resource "newrelic_alert_channel" "alert_chanel" {
  name = var.alert_channelName
  type = "slack"

  config {
    url     = var.alert_slackUrl
    channel = var.alert_slackChannel
  }
}


//Asociación de canal de alerta con política de alerta//
resource "newrelic_alert_policy_channel" "policy_channel" {
  policy_id   = newrelic_alert_policy.alertpolicylogs.id
  channel_ids = [newrelic_alert_channel.alert_chanel.id]
}

