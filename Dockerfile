FROM boomalien/rpi-alpine-python2

RUN easy_install paho-mqtt && \
    easy_install pyserial && \
    easy_install cherrypy && \
    easy_install pycrypto && \
    git clone https://github.com/panStamp/python_tools.git /opt && \
    cd /opt/python_tools/pyswap && \
    python setup.py install
