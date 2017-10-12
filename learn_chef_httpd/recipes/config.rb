#
# Cookbook:: learn_chef_httpd
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.
app = search(:aws_opsworks_app).first

file '/var/www/html/config.html' do
  content "configured
shortname       - #{app['shortname']}
app_source.type - #{app['app_source']['type']}
app_source.url  - #{app['app_source']['url']}
stack-overall   - #{node['stack-overall']}
stack-layer     - #{node['stack-layer']}
"
end

template 'config_instance' do
  path '/var/www/html/config/config_instance.html'
  source 'templates/config.html.erb'
  variables(
    :aws_opsworks_instance => search("aws_opsworks_instance")
  )
end
