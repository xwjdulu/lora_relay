
route DELETE 192.168.168.11
route DELETE 192.168.168.21
route DELETE 192.168.168.31
route DELETE 192.168.168.41
route DELETE 192.168.168.51
route DELETE 192.168.168.61
route DELETE 192.168.168.71
route DELETE 192.168.168.81
route DELETE 192.168.168.91
route DELETE 192.168.168.101
route DELETE 192.168.168.111
route DELETE 192.168.168.121
route DELETE 192.168.168.131
route DELETE 192.168.168.141
route DELETE 192.168.168.151
route DELETE 192.168.168.161

route ADD 192.168.168.11 MASK 255.255.255.255 192.168.169.10 
route ADD 192.168.168.21 MASK 255.255.255.255 192.168.169.20 
route ADD 192.168.168.31 MASK 255.255.255.255 192.168.169.30 
route ADD 192.168.168.41 MASK 255.255.255.255 192.168.169.40 
route ADD 192.168.168.51 MASK 255.255.255.255 192.168.169.50 
route ADD 192.168.168.61 MASK 255.255.255.255 192.168.169.60 
route ADD 192.168.168.71 MASK 255.255.255.255 192.168.169.70 
route ADD 192.168.168.81 MASK 255.255.255.255 192.168.169.80 
route ADD 192.168.168.91 MASK 255.255.255.255 192.168.169.90 
route ADD 192.168.168.101 MASK 255.255.255.255 192.168.169.102 
route ADD 192.168.168.111 MASK 255.255.255.255 192.168.169.110 
route ADD 192.168.168.121 MASK 255.255.255.255 192.168.169.120 
route ADD 192.168.168.131 MASK 255.255.255.255 192.168.169.130 
route ADD 192.168.168.141 MASK 255.255.255.255 192.168.169.140 
route ADD 192.168.168.151 MASK 255.255.255.255 192.168.169.150 
route ADD 192.168.168.161 MASK 255.255.255.255 192.168.169.160 

route DELETE 192.168.168.201
route DELETE 192.168.168.202
route DELETE 192.168.168.203
route DELETE 192.168.168.204
route DELETE 192.168.168.205
route DELETE 192.168.168.206

route ADD 192.168.168.201 MASK 255.255.255.255 192.168.169.10
route ADD 192.168.168.202 MASK 255.255.255.255 192.168.169.10
route ADD 192.168.168.203 MASK 255.255.255.255 192.168.169.10
route ADD 192.168.168.204 MASK 255.255.255.255 192.168.169.10
route ADD 192.168.168.205 MASK 255.255.255.255 192.168.169.10
route ADD 192.168.168.206 MASK 255.255.255.255 192.168.169.10

route print
exit

