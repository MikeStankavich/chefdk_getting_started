#
# Cookbook Name:: chefdk_getting_started
# Attributes:: default
#
# Copyright (c) 2015 The Authors, All Rights Reserved.

default['postgresql']['password']['postgres'] = 'postgres'
default['postgresql']['config']['listen_addresses'] = '*'

default['postgresql']['config_pgtune']['db_type'] = 'web'