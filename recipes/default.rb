#
# Cookbook Name:: yum_package_hack
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.


%w(./embedded/lib/ruby/gems/2.1.0/bundler/gems/chef-4788d800c1ce/lib/chef/provider/package/yum-dump.py ./embedded/lib/ruby/gems/2.1.0/gems/chef-12.7.2/lib/chef/provider/package/yum-dump.py ).each do |chef_path|
  cookbook_file chef_path + 'yum-dump.py' do
    action :nothing
    source 'yum-dump.py'
  end
end

# yum_package "httpd = 2.2.15-47.el6_7"

include_recipe 'yum_package_hack::libxtst'

# yum_package 'libXtst >= 1.0.99.2-3.el6'
# yum_package "httpd > 2.2.15-47.el6.centos.3"
