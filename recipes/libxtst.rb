#
# Cookbook Name:: yum_package_hack
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

yum_package 'libX11'

cookbook_file '/root/libXtst-1.2.1-2.el6.x86_64.rpm' do
  source 'libXtst-1.2.1-2.el6.x86_64.rpm'
end

yum_package 'libXtst' do
  source '/root/libXtst-1.2.1-2.el6.x86_64.rpm'
end
