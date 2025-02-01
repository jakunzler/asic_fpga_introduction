FROM --platform=linux/386 i386/ubuntu:16.04
RUN apt-get update && apt-get install -y \
    libx11-6 libxext6 libxft2 libxinerama1 \
    libpng12-0 libglib2.0-0 libsm6 libfreetype6
COPY quartus_installer /quartus_installer
WORKDIR /quartus_installer
RUN ./QuartusSetupWeb-13.0.1.232.run --mode unattended --unattendedmodeui none --installdir /opt/altera/13.0sp1
CMD ["/opt/altera/13.0sp1/quartus/bin/quartus"]
