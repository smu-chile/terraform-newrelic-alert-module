data "consul_keys" "input" {
  key {
    name = "account-id"
    path = "${var.consul_base_path}/account-id"
  }
  key {
    name = "api-key"
    path = "${var.consul_base_path}/api-key"
  }
  key {
    name = "newrelic-region"
    path = "${var.consul_base_path}/region"
  }
  key {
    name = "newrelic_policyName"
    path = "${var.consul_base_path}/${var.consul_app_path}/newrelic_policyName"
  }
  key {
    name = "alertName"
    path = "${var.consul_base_path}/${var.consul_app_path}/alertName"
  }
  key {
    name = "alertDescription"
    path = "${var.consul_base_path}/${var.consul_app_path}/alertDescription"
  }
  key {
    name = "runbookURL"
    path = "${var.consul_base_path}/${var.consul_app_path}/runbookURL"
  }
  key {
    name = "query"
    path = "${var.consul_base_path}/${var.consul_app_path}/query"
  }
  key {
    name = "criticalOperator"
    path = "${var.consul_base_path}/${var.consul_app_path}/criticalOperator"
  }
  key {
    name = "criticalThreshold"
    path = "${var.consul_base_path}/${var.consul_app_path}/criticalThreshold"
  }
  key {
    name = "criticalThresholdDuration"
    path = "${var.consul_base_path}/${var.consul_app_path}/criticalThresholdDuration"
  }
  key {
    name = "criticalThresholdOccurrences"
    path = "${var.consul_base_path}/${var.consul_app_path}/criticalThresholdOccurrences"
  }
  key {
    name = "alert_channelName"
    path = "${var.consul_base_path}/${var.consul_app_path}/alert_channelName"
  }
  key {
    name = "alert_channelType"
    path = "${var.consul_base_path}/${var.consul_app_path}/alert_channelType"
  }
  key {
    name = "alert_recipients"
    path = "${var.consul_base_path}/${var.consul_app_path}/alert_recipients"
  }
  key {
    name = "alert_slackUrl"
    path = "${var.consul_base_path}/${var.consul_app_path}/slackUrl"
  }
  key {
    name = "alert_slackChannel"
    path = "${var.consul_base_path}/${var.consul_app_path}/slackChannel"
  }
}

