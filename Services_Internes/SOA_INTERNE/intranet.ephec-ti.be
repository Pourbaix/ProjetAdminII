$ORIGIN intranet.ephec-ti.be.
$TTL 86400
@               IN     SOA      ns.intranet.ephec-ti.be.     michael.l2-5.ephec-ti.be. (
                                2001062501 ;
                                21600      ;
                                3600       ;
                                604800     ;
                                86400 )    ;

@                IN     NS       ns.intranet.ephec-ti.be. ;


ns              IN      A               192.168.0.2
resolv          IN      A               192.168.0.1 //Ip du VPS qui contient les services internes
db              IN      A               192.168.0.3 //Ip du VPS qui contient les services internes
cloud 			IN 		A				192.168.0.4 //Ip du VPS qui contient les services internes