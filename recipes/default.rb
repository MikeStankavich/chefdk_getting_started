#
# Cookbook Name:: chefdk_getting_started
# Recipe:: default
#
# Copyright (c) 2015 The Authors, All Rights Reserved.

include_recipe 'postgresql::server'
include_recipe 'postgresql::client'
include_recipe 'postgresql::config_initdb'
include_recipe 'postgresql::config_pgtune'
include_recipe 'postgresql::contrib'
