FROM resin/armv7hf-debian

#RUN [ "cross-build-start" ]

RUN apt-get update  
RUN apt-get install lazarus  

#RUN [ "cross-build-end" ]  