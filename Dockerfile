FROM boomalien/rpi-alpine-python2

RUN easy_install paho-mqtt && \
    easy_install pyserial && \
    easy_install cherrypy && \
    easy_install pycrypto

WORKDIR /opt

RUN git clone https://github.com/panStamp/python_tools.git

WORKDIR python_tools/pyswap

RUN python /opt/python_tools/pyswap/setup.py install

EXPOSE 8001

CMD ["python","/opt/python_tools/lagarto/lagarto-swap/lagarto-swap.py"]
