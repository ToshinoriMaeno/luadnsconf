-- File: postdns.net.lua
-- Variable _a is replaced with zone name by Luadns
-- _a = "qmail.jp"

-- parameters
-- ttl = 3600
ipaddr = "14.192.44.5"

-- configurations
a(_a, ipaddr)
a(concat("www", _a),ipaddr)
a(concat("mx", _a),ipaddr)
a(concat("ns", _a),ipaddr)
ns("zzz", concat("ns",_a))

mx(_a, concat("mx", _a), 0)
txt(_a, "v=spf1 a mx ptr ip4:" .. ipaddr .. " ptr:mx." .. _a .. " mx:mx." .. _a .. " mx:" .. _a .. " -all")
