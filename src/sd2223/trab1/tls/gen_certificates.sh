rm -f *.jks

keytool -genkey -alias users -keyalg RSA -validity 365 -keystore ./users.jks -storetype pkcs12 << EOF
usersks
usersks
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

echo
echo
echo "Exporting Certificates"
echo
echo

keytool -exportcert -alias users -keystore users.jks -file users.cert << EOF
usersks
EOF

echo "Creating Client Truststore"
cp cacerts client-ts.jks
keytool -importcert -file users.cert -alias users -keystore client-ts.jks << EOF
clienttrustpwd
yes
EOF