#
# Cookbook Name:: yum_package_hack
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.


chef_path = '/'

cookbook_file chef_path + 'yum-dump.py' do
  action :nothing
  source 'yum-dump.py'
end

yum_package 'libXtst' do
  action :install
  source '/root/libXtst-1.2.1-2.el6.x86_64.rpm'
end

yum_package "httpd = 2.2.15-47.el6_7"

include_recipe 'yum_package_hack::libxtst'

# yum_package 'libXtst >= 1.0.99.2-3.el6'
# yum_package "httpd > 2.2.15-47.el6.centos.3"
