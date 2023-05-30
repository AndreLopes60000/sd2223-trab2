rm -f *.jks

keytool -genkey -alias users0 -keyalg RSA -validity 365 -keystore users0.jks -storetype pkcs12 -ext SAN=dns:users0-ourorg0 << EOF
pwdpwd
pwdpwd
Users.Users
TP2
SD2223
LX
LX
PT
yes
firstkey
firstkey
EOF


keytool -exportcert -alias users0 -keystore users0.jks -file users0.cert << EOF
pwdpwd
EOF

cp cacerts client-ts.jks
keytool -importcert -file users0.cert -alias users0 -keystore client-ts.jks << EOF
changeit
yes
EOF

keytool -genkey -alias users1 -keyalg RSA -validity 365 -keystore users1.jks -storetype pkcs12 -ext SAN=dns:users0-ourorg1 << EOF
pwdpwd
pwdpwd
Users.Users
TP2
SD2223
LX
LX
PT
yes
firstkey
firstkey
EOF

keytool -exportcert -alias users1 -keystore users1.jks -file users1.cert << EOF
pwdpwd
EOF

keytool -importcert -file users1.cert -alias users1 -keystore client-ts.jks << EOF
changeit
yes
EOF

keytool -genkey -alias users2 -keyalg RSA -validity 365 -keystore users2.jks -storetype pkcs12 -ext SAN=dns:users0-ourorg2 << EOF
pwdpwd
pwdpwd
Users.Users
TP2
SD2223
LX
LX
PT
yes
firstkey
firstkey
EOF

keytool -exportcert -alias users2 -keystore users2.jks -file users2.cert << EOF
pwdpwd
EOF

keytool -importcert -file users2.cert -alias users2 -keystore client-ts.jks << EOF
changeit
yes
EOF

keytool -genkey -alias feeds0-0 -keyalg RSA -validity 365 -keystore feeds0-0.jks -storetype pkcs12 -ext SAN=dns:feeds0-ourorg0 << EOF
pwdpwd
pwdpwd
Feeds.Feeds
TP2
SD2223
LX
LX
PT
yes
firstkey
firstkey
EOF

keytool -exportcert -alias feeds0-0 -keystore feeds0-0.jks -file feeds0-0.cert << EOF
pwdpwd
EOF

keytool -importcert -file feeds0-0.cert -alias feeds0-0 -keystore client-ts.jks << EOF
changeit
yes
EOF

keytool -genkey -alias feeds1-0 -keyalg RSA -validity 365 -keystore feeds1-0.jks -storetype pkcs12 -ext SAN=dns:feeds1-ourorg0 << EOF
pwdpwd
pwdpwd
Feeds.Feeds
TP2
SD2223
LX
LX
PT
yes
firstkey
firstkey
EOF

keytool -exportcert -alias feeds1-0 -keystore feeds1-0.jks -file feeds1-0.cert << EOF
pwdpwd
EOF

keytool -importcert -file feeds1-0.cert -alias feeds1-0 -keystore client-ts.jks << EOF
changeit
yes
EOF

keytool -genkey -alias feeds2-0 -keyalg RSA -validity 365 -keystore feeds2-0.jks -storetype pkcs12 -ext SAN=dns:feeds2-ourorg0 << EOF
pwdpwd
pwdpwd
Feeds.Feeds
TP2
SD2223
LX
LX
PT
yes
firstkey
firstkey
EOF

keytool -exportcert -alias feeds2-0 -keystore feeds2-0.jks -file feeds2-0.cert << EOF
pwdpwd
EOF

keytool -importcert -file feeds2-0.cert -alias feeds2-0 -keystore client-ts.jks << EOF
changeit
yes
EOF

keytool -genkey -alias feeds0-1 -keyalg RSA -validity 365 -keystore feeds0-1.jks -storetype pkcs12 -ext SAN=dns:feeds0-ourorg1 << EOF
pwdpwd
pwdpwd
Feeds.Feeds
TP2
SD2223
LX
LX
PT
yes
firstkey
firstkey
EOF

keytool -exportcert -alias feeds0-1 -keystore feeds0-1.jks -file feeds0-1.cert << EOF
pwdpwd
EOF

keytool -importcert -file feeds0-1.cert -alias feeds0-1 -keystore client-ts.jks << EOF
changeit
yes
EOF

keytool -genkey -alias feeds1-1 -keyalg RSA -validity 365 -keystore feeds1-1.jks -storetype pkcs12 -ext SAN=dns:feeds1-ourorg1 << EOF
pwdpwd
pwdpwd
Feeds.Feeds
TP2
SD2223
LX
LX
PT
yes
firstkey
firstkey
EOF

keytool -exportcert -alias feeds1-1 -keystore feeds1-1.jks -file feeds1-1.cert << EOF
pwdpwd
EOF

keytool -importcert -file feeds1-1.cert -alias feeds1-1 -keystore client-ts.jks << EOF
changeit
yes
EOF

keytool -genkey -alias feeds2-1 -keyalg RSA -validity 365 -keystore feeds2-1.jks -storetype pkcs12 -ext SAN=dns:feeds2-ourorg1 << EOF
pwdpwd
pwdpwd
Feeds.Feeds
TP2
SD2223
LX
LX
PT
yes
firstkey
firstkey
EOF

keytool -exportcert -alias feeds2-1 -keystore feeds2-1.jks -file feeds2-1.cert << EOF
pwdpwd
EOF

keytool -importcert -file feeds2-1.cert -alias feeds2-1 -keystore client-ts.jks << EOF
changeit
yes
EOF

keytool -genkey -alias feeds0-2 -keyalg RSA -validity 365 -keystore feeds0-2.jks -storetype pkcs12 -ext SAN=dns:feeds0-ourorg2 << EOF
pwdpwd
pwdpwd
Feeds.Feeds
TP2
SD2223
LX
LX
PT
yes
firstkey
firstkey
EOF

keytool -exportcert -alias feeds0-2 -keystore feeds0-2.jks -file feeds0-2.cert << EOF
pwdpwd
EOF

keytool -importcert -file feeds0-2.cert -alias feeds0-2 -keystore client-ts.jks << EOF
changeit
yes
EOF

keytool -genkey -alias feeds1-2 -keyalg RSA -validity 365 -keystore feeds1-2.jks -storetype pkcs12 -ext SAN=dns:feeds1-ourorg2 << EOF
pwdpwd
pwdpwd
Feeds.Feeds
TP2
SD2223
LX
LX
PT
yes
firstkey
firstkey
EOF

keytool -exportcert -alias feeds1-2 -keystore feeds1-2.jks -file feeds1-2.cert << EOF
pwdpwd
EOF

keytool -importcert -file feeds1-2.cert -alias feeds1-2 -keystore client-ts.jks << EOF
changeit
yes
EOF

keytool -genkey -alias feeds2-2 -keyalg RSA -validity 365 -keystore feeds2-2.jks -storetype pkcs12 -ext SAN=dns:feeds2-ourorg2 << EOF
pwdpwd
pwdpwd
Feeds.Feeds
TP2
SD2223
LX
LX
PT
yes
firstkey
firstkey
EOF

keytool -exportcert -alias feeds2-2 -keystore feeds2-2.jks -file feeds2-2.cert << EOF
pwdpwd
EOF

keytool -importcert -file feeds2-2.cert -alias feeds2-2 -keystore client-ts.jks << EOF
changeit
yes
EOF