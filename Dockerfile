FROM boomalien/rpi-alpine-python2

RUN easy_install paho-mqtt && \
    easy_install pyserial && \
    easy_install cherrypy && \
    easy_install pycrypto && \
    cd /opt && \
    git clone https://github.com/panStamp/python_tools.git && \
    cd /opt/python_tools/pyswap && \
    python setup.py install
