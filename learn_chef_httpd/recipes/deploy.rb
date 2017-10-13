#
# Cookbook:: learn_chef_httpd
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.
#app = search(:aws_opsworks_app).first
app = search(:aws_opsworks_app,"deploy:true").first
shortname = app['shortname']

Chef::Log.info("********** '#{app['environment']['username']}'")
Chef::Log.info("********** '#{app['environment']}'")

#env_variables_1 = node[:deploy]
#env_variables_2 = env_variables_1[shortname]
#env_variables   = env_variables_2[:environment_variables]

file "/var/www/html/deploy-#{shortname}.html" do
  content "deployed
shortname       - #{app['shortname']}
app_source.type - #{app['app_source']['type']}
app_source.url  - #{app['app_source']['url']}
stack-overall   - #{node['stack-overall']}
stack-layer     - #{node['stack-layer']}

Enviroment variables:

username        - #{app['environment']['username']}

"
end
