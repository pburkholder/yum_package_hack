#
# Cookbook Name:: yum_package_hack
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

#yum_package 'libX11' do
#  action :nothing
#end.run_action(:install)
#
#cookbook_file '/root/libXtst-1.2.1-2.el6.x86_64.rpm' do
#  action :nothing
#  source 'libXtst-1.2.1-2.el6.x86_64.rpm'
#end.run_action(:create)
yum_package "httpd = 2.2.15-47.el6_7" do
  action :nothing
end.run_action(:install)
#
#yum_package 'libXtst' do
#  action :nothing
#  source '/root/libXtst-1.2.1-2.x86_64.i686.rpm'
#end.run_action(:install)

yum_package "httpd > 2.2.15-47.el6_7" do
action :install
end

# yum_package "httpd > 2.2.15-47.el6_7"
