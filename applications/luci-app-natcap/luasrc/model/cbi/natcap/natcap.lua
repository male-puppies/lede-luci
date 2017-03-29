-- Copyright 2008 Steven Barth <steven@midlink.org>
-- Copyright 2008-2011 Jo-Philipp Wich <jow@openwrt.org>
-- Licensed to the public under the Apache License 2.0.

local m = Map("natcapd", luci.util.pcdata(translate("Natcap 服务")), translate("Natcap 流量免审计"))

local s = m:section(TypedSection, "natcapd", "")
s.addremove = false
s.anonymous = true

e = s:option(Flag, "enabled", translate("启用 Natcap"))
e.default = e.disabled
e.rmempty = false

e = s:option(Value, "account", translate("Natcap 帐号"))
e.rmempty = true
e.placeholder = 'account'

e = s:option(DynamicList, "server", translate("Natcap 服务器"), translate("请按照格式填写服务器（ip:port）"))
e.datatype = "list(ipaddrport(1))"
e.placeholder = "1.2.3.4:0"

e = s:option(Flag, "enable_encryption", translate("启用加密"))
e.default = e.enabled
e.rmempty = false

e = s:option(Value, "server_persist_timeout", translate("服务器切换时间（秒）"), translate("多久切换一次服务器。"))
e.default = '60'
e.rmempty = true
e.placeholder = '60'

e = s:option(Flag, "encode_mode", translate("强制UDP模式"), translate("一般不要启用，除非正常模式不通。"))
e.default = e.disabled
e.rmempty = false

e = s:option(Flag, "sproxy", translate("TCP代理加速"), translate("推荐使用，利用服务器的TCP代理和谷歌BBR算法加速。"))
e.default = e.disabled
e.rmempty = false

e = s:option(Flag, "pptpd", translate("启用PPTP服务器"), translate("允许你用VPN连接自己的路由器，路由器需要有公网IP。"))
e.default = e.disabled
e.rmempty = false

local u = m:section(TypedSection, "pptpuser", "")
u.addremove = true
u.anonymous = true
u.template = "cbi/tblsection"

e = u:option(Value, "username", translate("PPTP用户"))
e.datatype = "string"
e.rmempty  = false

e = u:option(Value, "password", translate("密码"))
e.datatype = "string"
e.rmempty  = false

return m
