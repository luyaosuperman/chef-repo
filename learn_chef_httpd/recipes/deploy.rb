#
# Cookbook:: learn_chef_httpd
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.
#app = search(:aws_opsworks_app).first
app = search(:aws_opsworks_app,"deploy:true")
shortname = app['shortname']

file "/var/www/html/deploy-#{shortname}.html" do
  content "deployed
shortname       - #{app['shortname']}
app_source.type - #{app['app_source']['type']}
app_source.url  - #{app['app_source']['url']}
stack-overall   - #{node['stack-overall']}
stack-layer     - #{node['stack-layer']}

Enviroment variables:

"
end
