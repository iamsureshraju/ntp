#Attributes
case platform
when "redhat","centos","fedora","scientific"
	default[:ntp][:service] = "ntpd"
when "ubuntu","debian"
	default[:ntp][:service] = "ntp"
else
	default[:ntp][:service] = "ntpd"
end


default[:ntp][:servers] = ["0.pool.ntp.org","1.pool.ntp.org","2.pool.ntp.org","3.pool.ntp.org"]
