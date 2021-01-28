FROM amazonlinux

WORKDIR /tmp

RUN yum install git tar xz -y \
    && mkdir -p /usr/local/lib/nodejs \
    && curl -O https://nodejs.org/dist/v14.15.0/node-v14.15.0-linux-x64.tar.xz \
    && tar -xJvf node-v14.15.0-linux-x64.tar.xz -C /usr/local/lib/nodejs \
    && rm -f node-v14.15.0-linux-x64.tar.xz

ENV PATH="/usr/local/lib/nodejs/node-v14.15.0-linux-x64/bin:${PATH}"

COPY angular-seed .

RUN chmod 777 /var/run/docker.sock

VOLUME /var/run/docker.sock:/var/run/docker.sock

RUN npm install

CMD npm start


