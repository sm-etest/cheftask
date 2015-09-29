#
# Cookbook Name:: testwebapp
# Recipe:: create_jbosscookbook
#
# Copyright (c) 2015 The Authors, All Rights Reserved.

shell_out('cd `cat ~/.chef/knife.rb | grep -i cookbook_path | sed "s/\([^/]*\)\([^\']*\).*/\\2/"` && knife cookbook create jboss')

template "#{node['cookbooks_path']}/jboss/recipes/start.rb" do
  source 'default/start.rb.erb'
end

template "#{node['cookbooks_path']}/jboss/recipes/stop.rb" do
  source 'default/stop.rb.erb'
end

template "#{node['cookbooks_path']}/jboss/recipes/restart.rb" do
  source 'default/restart.rb.erb'
end

template "#{node['cookbooks_path']}/jboss/recipes/reload.rb" do
  source 'default/reload.rb.erb'
end

template "#{node['cookbooks_path']}/jboss/recipes/install.rb" do
  source 'default/install.rb.erb'
end

template "#{node['cookbooks_path']}/jboss/recipes/setup.rb" do
  source 'default/setup.rb.erb'
end

template "#{node['cookbooks_path']}/jboss/recipes/default.rb" do
  source 'default/default.rb.erb'
end

shell_out!('cd `cat ~/.chef/knife.rb | grep -i cookbook_path | sed "s/\([^/]*\)\([^\']*\).*/\\2/"` && echo "depends \'java\'" >> jboss/metadata.rb')

shell_out!('cd `cat ~/.chef/knife.rb | grep -i cookbook_path | sed "s/\([^/]*\)\([^\']*\).*/\\2/"` && echo "depends \'jboss\'" >> testwebapp/metadata.rb')
