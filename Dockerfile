FROM    centos:centos6
# Enable EPEL for Node.js
RUN    rpm -Uvh http://download.fedoraproject.org/pub/epel/6/i386/epel-release-6-8.noarch.rpm
# Install Node.js and npm
RUN    yum install -y npm

# Bundle app source
COPY    app.js /opt/node/
COPY    package.json /opt/node/

# Install app dependencies
RUN    pushd /opt/node; npm install; popd

EXPOSE  49000
CMD    ["node", "/opt/node/app.js"]
