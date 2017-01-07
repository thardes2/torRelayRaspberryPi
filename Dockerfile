FROM resin/rpi-raspbian:jessie-20160831
RUN apt-get update

RUN apt-get update

###TOR##
RUN apt-get install tor -y
RUN apt-get install tor-arm -y 
RUN apt-get clean && rm -rf /var/lib/apt/lists/*

add torrc /torrc
add startService.sh /startService.sh
COPY /torrc /etc/tor/torrc


EXPOSE 9050

RUN chmod +x /startService.sh


#Setupterm is not able to find the terminal without those export commands in order to see the graph
RUN export TERM=linux 
RUN export TERMINFO=/etc/terminfo

ENTRYPOINT ["/startService.sh"]
