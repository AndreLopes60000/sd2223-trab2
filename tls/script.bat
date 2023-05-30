rm -f *.jks

keytool -genkey -alias users0 -keyalg RSA -validity 365 -keystore users0.jks -storetype pkcs12 -ext SAN=dns:users0-ourorg0 << EOF
users0pwd
users0pwd
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
users0pwd
EOF

cp cacerts client-ts.jks
keytool -importcert -file users0.cert -alias users0 -keystore client-ts.jks << EOF
changeit
yes
EOF

keytool -genkey -alias users1 -keyalg RSA -validity 365 -keystore users1.jks -storetype pkcs12 -ext SAN=dns:users0-ourorg1 << EOF
users1pwd
users1pwd
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
users1pwd
EOF

keytool -importcert -file users1.cert -alias users1 -keystore client-ts.jks << EOF
changeit
yes
EOF

keytool -genkey -alias users2 -keyalg RSA -validity 365 -keystore users2.jks -storetype pkcs12 -ext SAN=dns:users0-ourorg2 << EOF
users2pwd
users2pwd
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
users2pwd
EOF

keytool -importcert -file users2.cert -alias users2 -keystore client-ts.jks << EOF
changeit
yes
EOF

keytool -genkey -alias feeds0-0 -keyalg RSA -validity 365 -keystore feeds0-0.jks -storetype pkcs12 -ext SAN=dns:feeds0-ourorg0 << EOF
feeds0-0pwd
feeds0-0pwd
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
feeds0-0pwd
EOF

keytool -importcert -file feeds0-0.cert -alias feeds0-0 -keystore client-ts.jks << EOF
changeit
yes
EOF

keytool -genkey -alias feeds1-0 -keyalg RSA -validity 365 -keystore feeds1-0.jks -storetype pkcs12 -ext SAN=dns:feeds1-ourorg0 << EOF
feeds1-0pwd
feeds1-0pwd
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
feeds1-0pwd
EOF

keytool -importcert -file feeds1-0.cert -alias feeds1-0 -keystore client-ts.jks << EOF
changeit
yes
EOF

keytool -genkey -alias feeds2-0 -keyalg RSA -validity 365 -keystore feeds2-0.jks -storetype pkcs12 -ext SAN=dns:feeds2-ourorg0 << EOF
feeds2-0pwd
feeds2-0pwd
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
feeds2-0pwd
EOF

keytool -importcert -file feeds2-0.cert -alias feeds2-0 -keystore client-ts.jks << EOF
changeit
yes
EOF

keytool -genkey -alias feeds0-1 -keyalg RSA -validity 365 -keystore feeds0-1.jks -storetype pkcs12 -ext SAN=dns:feeds0-ourorg1 << EOF
feeds0-1pwd
feeds0-1pwd
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
feeds0-1pwd
EOF

keytool -importcert -file feeds0-1.cert -alias feeds0-1 -keystore client-ts.jks << EOF
changeit
yes
EOF

keytool -genkey -alias feeds1-1 -keyalg RSA -validity 365 -keystore feeds1-1.jks -storetype pkcs12 -ext SAN=dns:feeds1-ourorg1 << EOF
feeds1-1pwd
feeds1-1pwd
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
feeds1-1pwd
EOF

keytool -importcert -file feeds1-1.cert -alias feeds1-1 -keystore client-ts.jks << EOF
changeit
yes
EOF

keytool -genkey -alias feeds2-1 -keyalg RSA -validity 365 -keystore feeds2-1.jks -storetype pkcs12 -ext SAN=dns:feeds2-ourorg1 << EOF
feeds2-1pwd
feeds2-1pwd
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
feeds2-1pwd
EOF

keytool -importcert -file feeds2-1.cert -alias feeds2-1 -keystore client-ts.jks << EOF
changeit
yes
EOF

keytool -genkey -alias feeds0-2 -keyalg RSA -validity 365 -keystore feeds0-2.jks -storetype pkcs12 -ext SAN=dns:feeds0-ourorg2 << EOF
feeds0-2pwd
feeds0-2pwd
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
feeds0-2pwd
EOF

keytool -importcert -file feeds0-2.cert -alias feeds0-2 -keystore client-ts.jks << EOF
changeit
yes
EOF

keytool -genkey -alias feeds1-2 -keyalg RSA -validity 365 -keystore feeds1-2.jks -storetype pkcs12 -ext SAN=dns:feeds1-ourorg2 << EOF
feeds1-2pwd
feeds1-2pwd
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
feeds1-2pwd
EOF

keytool -importcert -file feeds1-2.cert -alias feeds1-2 -keystore client-ts.jks << EOF
changeit
yes
EOF

keytool -genkey -alias feeds2-2 -keyalg RSA -validity 365 -keystore feeds2-2.jks -storetype pkcs12 -ext SAN=dns:feeds2-ourorg2 << EOF
feeds2-2pwd
feeds2-2pwd
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
feeds2-2pwd
EOF

keytool -importcert -file feeds2-2.cert -alias feeds2-2 -keystore client-ts.jks << EOF
changeit
yes
EOF