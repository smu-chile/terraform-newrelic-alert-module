# terraform-newrelic-alert-module
<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.13 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_newrelic"></a> [newrelic](#provider\_newrelic) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [newrelic_alert_channel.alert_chanel](https://registry.terraform.io/providers/newrelic/newrelic/latest/docs/resources/alert_channel) | resource |
| [newrelic_alert_policy.alertpolicylogs](https://registry.terraform.io/providers/newrelic/newrelic/latest/docs/resources/alert_policy) | resource |
| [newrelic_alert_policy_channel.policy_channel](https://registry.terraform.io/providers/newrelic/newrelic/latest/docs/resources/alert_policy_channel) | resource |
| [newrelic_nrql_alert_condition.nrql_alert_condition](https://registry.terraform.io/providers/newrelic/newrelic/latest/docs/resources/nrql_alert_condition) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_account-id"></a> [account-id](#input\_account-id) | New Relic account id | `string` | n/a | yes |
| <a name="input_aggregation_delay"></a> [aggregation\_delay](#input\_aggregation\_delay) | Aggregation delay | `string` | `null` | no |
| <a name="input_aggregation_method"></a> [aggregation\_method](#input\_aggregation\_method) | Aggregation method | `string` | `null` | no |
| <a name="input_aggregation_window"></a> [aggregation\_window](#input\_aggregation\_window) | Aggregation window | `string` | `null` | no |
| <a name="input_alertDescription"></a> [alertDescription](#input\_alertDescription) | Description of the alert | `string` | n/a | yes |
| <a name="input_alertName"></a> [alertName](#input\_alertName) | Alert Name | `string` | n/a | yes |
| <a name="input_alert_channelName"></a> [alert\_channelName](#input\_alert\_channelName) | Channel Name | `string` | n/a | yes |
| <a name="input_alert_channelType"></a> [alert\_channelType](#input\_alert\_channelType) | Channel Type | `string` | n/a | yes |
| <a name="input_alert_recipients"></a> [alert\_recipients](#input\_alert\_recipients) | Recipients | `string` | n/a | yes |
| <a name="input_alert_slackChannel"></a> [alert\_slackChannel](#input\_alert\_slackChannel) | Slack Channel's Name | `string` | n/a | yes |
| <a name="input_alert_slackUrl"></a> [alert\_slackUrl](#input\_alert\_slackUrl) | Url for slack's URL | `string` | n/a | yes |
| <a name="input_api-key"></a> [api-key](#input\_api-key) | New Relic api-key | `string` | n/a | yes |
| <a name="input_criticalOperator"></a> [criticalOperator](#input\_criticalOperator) | Operator for identifying when the case in critical | `string` | n/a | yes |
| <a name="input_criticalThreshold"></a> [criticalThreshold](#input\_criticalThreshold) | How many time should the case shoul be identified to get an alert | `string` | n/a | yes |
| <a name="input_criticalThresholdDuration"></a> [criticalThresholdDuration](#input\_criticalThresholdDuration) | Threshold Duration in secs | `string` | n/a | yes |
| <a name="input_criticalThresholdOccurrences"></a> [criticalThresholdOccurrences](#input\_criticalThresholdOccurrences) | Threshold Occurrences | `string` | n/a | yes |
| <a name="input_enabled"></a> [enabled](#input\_enabled) | Is alert enabled? | `bool` | `true` | no |
| <a name="input_fill_option"></a> [fill\_option](#input\_fill\_option) | Fill option | `string` | `"static"` | no |
| <a name="input_fill_value"></a> [fill\_value](#input\_fill\_value) | Fill value | `string` | `"1"` | no |
| <a name="input_newrelic-region"></a> [newrelic-region](#input\_newrelic-region) | New Relic region | `string` | n/a | yes |
| <a name="input_newrelic_policyName"></a> [newrelic\_policyName](#input\_newrelic\_policyName) | Newrelic policy name | `string` | n/a | yes |
| <a name="input_query"></a> [query](#input\_query) | Query to run for getting the alert | `string` | n/a | yes |
| <a name="input_runbookURL"></a> [runbookURL](#input\_runbookURL) | runbookURL | `string` | n/a | yes |
| <a name="input_type"></a> [type](#input\_type) | Alert types | `string` | `"static"` | no |
| <a name="input_violation_time_limit_seconds"></a> [violation\_time\_limit\_seconds](#input\_violation\_time\_limit\_seconds) | Time limit for violation (seconds) | `number` | `18000` | no |

## Outputs

No outputs.
<!-- END_TF_DOCS -->