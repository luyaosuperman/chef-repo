#
# Cookbook:: learn_chef_httpd
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.
file '/var/www/html/deploy.html' do
  content 'deployed'
end
