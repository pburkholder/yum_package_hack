#
# Cookbook Name:: yum_package_hack
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

yum_package 'libX11' do
  action :nothing
end.run_action(:install)

cookbook_file '/root/libXtst-1.2.1-2.el6.i686.rpm' do
  action :nothing
  source 'libXtst-1.2.1-2.el6.i686.rpm'
end.run_action(:create)

yum_package 'libXtst' do
  action :nothing
  source '/root/libXtst-1.2.1-2.el6.i686.rpm'
end.run_action(:install)

yum_package 'libXtst >= 1.0.99.2-3.el6'

# yum_package "httpd > 2.2.15-47.el6_7"
