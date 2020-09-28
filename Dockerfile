FROM java

RUN mkdir /root/bin

WORKDIR /root/bin
RUN wget https://raw.githubusercontent.com/technomancy/leiningen/stable/bin/lein
RUN chmod +x /root/bin/lein
RUN /root/bin/lein self-install

WORKDIR /root

ENTRYPOINT ["/root/bin/lein"]