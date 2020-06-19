# image build phase
FROM node
WORKDIR /myapp
COPY package.json .
RUN npm install
COPY . .
COPY start.sh ./start.sh
RUN chmod +x start.sh
# container running phase
ENTRYPOINT ["./start.sh"]
