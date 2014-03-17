#
# Cookbook Name:: bundler
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
bash "run bundle install in app directory" do
  cwd File.join(node[:bundler][:app_path])
  code <<-COMMANDLINE 
  gem install bundler
  bundle install
  COMMANDLINE
end
