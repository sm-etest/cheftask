#
# Cookbook Name:: testwebapp
# Recipe:: configure_jbos
#
# Copyright (c) 2015 The Authors, All Rights Reserved.

Chef::Log.info("Receipe: #{cookbook_name}::#{recipe_name}")
include_recipe 'jboss::setup'
