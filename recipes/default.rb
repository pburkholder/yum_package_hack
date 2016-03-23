#
# Cookbook Name:: yum_package_hack
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

include_recipe 'yum_package_hack::libxtst'

# Now overwrite stock yum dump
%w(/opt/chef/embedded/lib/ruby/gems/2.1.0/bundler/gems/chef-4788d800c1ce/lib/chef/provider/package/yum-dump.py /opt/chef/embedded/lib/ruby/gems/2.1.0/gems/chef-12.7.2/lib/chef/provider/package/yum-dump.py ).each do |yumdump|
  cookbook_file yumdump do
    source 'yum-dump.py'
  end
end

# yum_package 'libXtst >= 1.0.99.2-3.el6'
