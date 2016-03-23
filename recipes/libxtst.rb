#
# Cookbook Name:: yum_package_hack
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

yum_package 'libX11'

rpm = 'libXtst-1.2.2-2.1.el6.x86_64.rpm'

cookbook_file '/root/' + rpm do
  source rpm
end

yum_package 'libXtst' do
  source '/root/' + rpm
end
