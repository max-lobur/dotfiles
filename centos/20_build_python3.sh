Ver=3.6.0

yum -y install yum-utils && \
    yum-builddep -y python && \
    yum -y install make && \
    yum -y clean all

curl -O https://www.python.org/ftp/python/${Ver}/Python-${Ver}.tgz && \
    tar -xf Python-${Ver}.tgz && \
    cd Python-${Ver} && \
    ./configure && \
    make && \
    make install

