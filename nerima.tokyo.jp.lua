-- File: postdns.net.lua
-- Variable _a is replaced with zone name by Luadns
-- _a = "postdns.net"

-- parameters
-- ttl = 3600
ipaddr = "49.212.139.194"

-- configurations
a(_a, ipaddr)
a(concat("www", _a),ipaddr)
a(concat("mx", _a),ipaddr)
a(concat("ns.qmail", _a),ipaddr)
ns("qmail", concat("ns.qmail",_a))

mx(_a, concat("mx", _a), 0)
txt(_a, "v=spf1 a mx ptr ip4:" .. ipaddr .. " ptr:mx." .. _a .. " mx:mx." .. _a .. " mx:" .. _a .. " -all")
