#
# Cookbook Name:: testwebapp
# Recipe:: deploy_webapp
#
# Copyright (c) 2015 The Authors, All Rights Reserved.



Chef::Log.info("Receipe: #{cookbook_name}::#{recipe_name}")
Chef::Log.info('Start  deploying testweb...')
Chef::Log.info('Downloading testweb.zip ...')

shell_out!("wget http://www.cumulogic.com/download/Apps/testweb.zip")
Chef::Log.info('Unpacking testweb.zip ...')
shell_out!("sudo unzip testweb.zip -d /usr/share/jboss-as-7.1.1.Final/standalone/deployments/")
Chef::Log.info('Removing testweb.zip ...')
shell_out!("rm testweb.zip")


