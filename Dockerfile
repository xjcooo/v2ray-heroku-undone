FROM debian:sid

RUN apt update -y \
    	&& apt upgrade -y \
    	&& apt install -y wget unzip qrencode

ADD entrypoint.sh /entrypoint.sh
ADD v2ray-linux-64.zip /v2raybin/v2ray-linux-64.zip
RUN chmod +x /entrypoint.sh
CMD /entrypoint.sh
