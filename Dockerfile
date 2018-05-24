FROM openjdk:10.0.1-jre

RUN echo "MD5 (Archi-Linux64-4.2.tgz) = c7d79ab42bace671074585f7a2d4fe7c" > md5.txt
RUN wget https://www.archimatetool.com/downloads/release/Archi-Linux64-4.2.tgz
RUN md5sum -c md5.txt
RUN tar xvzf Archi-Linux64-4.2.tgz