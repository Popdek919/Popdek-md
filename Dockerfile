FROM quay.io/sampandey001/secktor

RUN git clone https://github.com/Popdek919/POPDEK-MD /root/Popdek919

# Clear npm cache and remove node_modules directories
RUN npm cache clean --force
RUN rm -rf /root/Popdek919/node_modules

# Install dependencies
WORKDIR /root/Popdek919
RUN npm install

# Add additional Steps To Run...
EXPOSE 3000
CMD ["npm","start" ]
