#
# Cookbook:: learn_chef_httpd
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.
app = search(:aws_opsworks_app).first

file '/var/www/html/deploy.html' do
  content "deployed
shortname - #{app['shortname']}
"
end
