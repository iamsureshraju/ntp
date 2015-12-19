#
# Cookbook Name:: ntp
# Recipe:: default
#
# Copyright 2015, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
package "ntp" do
	action [:install]
end

service node[:ntp][:service] do
	service_name node[:ntp][:service]
	action [:enable,:start,:restart]
end

template "/etc/ntp.conf" do
	source "ntp.conf.erb"
	owner "root"
	group "root"
	mode 0644
	notifies :restart, resources(:service=>node[:ntp][:service])
end

