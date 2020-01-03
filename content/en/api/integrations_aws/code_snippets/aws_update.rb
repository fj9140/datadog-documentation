require 'rubygems'
require 'dogapi'

api_key = '<YOUR_API_KEY>'
app_key = '<YOUR_APP_KEY>'

# Existing configuration goes here.
config = {
  "account_id": "<AWS_ACCOUNT_ID>",
  "role_name": 'DatadogAWSIntegrationRole'
}

# New configuration goes here.
new_config = {
  "account_id": '<NEW_AWS_ACCOUNT_ID>',
  "host_tags": ["<KEY>:<VALUE>"],
  "filter_tags": ["<KEY>:<VALUE>"],
  "role_name": '<NEW_AWS_ROLE_NAME>'
}

dog = Dogapi::Client.new(api_key, app_key)

dog.aws_integration_update(config, new_config)