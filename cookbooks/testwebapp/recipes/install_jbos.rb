#
# Cookbook Name:: testwebapp
# Recipe:: install_jbos
#
# Copyright (c) 2015 The Authors, All Rights Reserved.


Chef::Log.info("Receipe: #{cookbook_name}::#{recipe_name}")
include_recipe 'jboss::install'
