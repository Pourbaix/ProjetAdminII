$TTL  604800
@     IN      SOA      ns.l2-5.ephec-ti.be. brice.l2-5.ephec-ti.be. (
                                  2021060809         ; Serial
                                  43200      ; Refresh
                                  7100      ; Retry
                                  2419200     ; Expire
                                  86300 )    ; Negative Cache TTL
;
@           IN     NS      ns.l2-5.ephec-ti.be.
@           IN     MX      10 mail
;
ns          IN      A       135.125.106.81
b2b         IN      A       135.125.106.81
www         IN      A       135.125.106.81
mail        IN      A       135.125.106.81
sip         IN      A       135.125.106.81


_sip._udp.l2-5.ephec-ti.be. 86400	SRV	0	0	5060	sip
_sip._tcp.l2-5.ephec-ti.be. 86400	SRV     0	0	5060	sip
;
smtp        IN      CNAME    mail
imap        IN      CNAME    mail

;