FROM nunopreguica/sd2223tpbase

# working directory inside docker image
WORKDIR /home/sd

# copy the jar created by assembly to the docker image
COPY target/*jar-with-dependencies.jar sd2223.jar

# copy the file of properties to the docker image
COPY feeds.props feeds.props

COPY tls/script.bat .
CMD script.bat


COPY tls/cacerts .
COPY tls/client-ts.jks .

COPY tls/feeds0-0.jks .
COPY tls/feeds0-1.jks .
COPY tls/feeds0-2.jks .

COPY tls/feeds1-0.jks .
COPY tls/feeds1-1.jks .
COPY tls/feeds1-2.jks .

COPY tls/feeds2-0.jks .
COPY tls/feeds2-1.jks .
COPY tls/feeds2-2.jks .

COPY tls/users0.jks .
COPY tls/users1.jks .
COPY tls/users2.jks .

COPY tls/servers.cert .

