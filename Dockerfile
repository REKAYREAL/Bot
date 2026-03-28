FROM quay.io/lyfe00011/md:beta

# Install procps to provide 'ps' command
RUN apt-get update && apt-get install -y procps && rm -rf /var/lib/apt/lists/*

RUN git clone https://github.com/lyfe00011/levanter.git /root/LyFE/
WORKDIR /root/LyFE/
RUN yarn install
CMD ["npm", "start"]
