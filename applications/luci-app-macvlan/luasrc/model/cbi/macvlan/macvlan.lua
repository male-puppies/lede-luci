-- Copyright 2008 Steven Barth <steven@midlink.org>
-- Copyright 2010-2015 Jo-Philipp Wich <jow@openwrt.org>
-- Licensed to the public under the Apache License 2.0.

m = Map("macvlan", translate("macvlan"))

s = m:section(TypedSection, "macvlan", translate("macvlan"))
s.addremove = true
s.anonymous = true
s.template = "cbi/tblsection"

hn = s:option(Value, "ifname", translate("interface name"))
hn.datatype = "string"
hn.rmempty  = false

ip = s:option(Value, "macvlan", translate("macvlan index number"))
ip.datatype = "and(uinteger,min(0),max(31))"
ip.rmempty  = false

return m
