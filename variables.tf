variable "account-id" {
  type        = string
  description = "New Relic account id"
}

variable "api-key" {
  type        = string
  description = "New Relic api-key"
}

variable "newrelic-region" {
  type        = string
  description = "New Relic region"
}

variable "newrelic_policyName" {
  type        = string
  description = "Newrelic policy name"
}

variable "alertName" {
  type        = string
  description = "Alert Name"
}

variable "alertDescription" {
  type        = string
  description = "Description of the alert"
}

variable "runbookURL" {
  type        = string
  description = "runbookURL"
}

variable "query" {
  type        = string
  description = "Query to run for getting the alert"
}

variable "criticalOperator" {
  type        = string
  description = "Operator for identifying when the case in critical"
}

variable "criticalThreshold" {
  type        = string
  description = "How many time should the case shoul be identified to get an alert"
}

variable "criticalThresholdDuration" {
  type        = string
  description = "Threshold Duration in secs"
}

variable "criticalThresholdOccurrences" {
  type        = string
  description = "Threshold Occurrences"
}

variable "alert_channelName" {
  type        = string
  description = "Channel Name"
}

variable "alert_channelType" {
  type        = string
  description = "Channel Type"
}

variable "alert_recipients" {
  type        = string
  description = "Recipients"
}

variable "alert_slackUrl" {
  type        = string
  description = "Url for slack's URL"
}

variable "alert_slackChannel" {
  type        = string
  description = "Slack Channel's Name"
}

variable "aggregation_method" {
  default     = null
  type        = string
  description = "Aggregation method"
}

variable "aggregation_delay" {
  default     = null
  type        = string
  description = "Aggregation delay"
}

variable "aggregation_window" {
  default     = null
  type        = string
  description = "Aggregation window"
}

variable "violation_time_limit_seconds" {
  default     = 18000
  description = "Time limit for violation (seconds)"
}

variable "enabled" {
  default     = true
  description = "Is alert enabled?"
}

variable "type" {
  default     = "static"
  description = "Alert types"
}

variable "fill_option" {
  default     = "static"
  description = "Fill option"
}

variable "fill_value" {
  default     = "1"
  description = "Fill value"
}
