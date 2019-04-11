FROM clojure

# Install Misc
RUN apt-get update
RUN apt-get update --fix-missing
RUN apt-get install sudo

# Install nodejs
RUN curl -sL https://deb.nodesource.com/setup_10.x | sudo bash -
RUN sudo apt-get install nodejs
RUN node -v
RUN npm -v

# Install Shadow-CLJS
RUN npm i -g shadow-cljs

#  Copy over app
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app
COPY project.clj /usr/src/app/
COPY package.json /usr/src/app/
RUN npm install
RUN lein deps
COPY . /usr/src/app

EXPOSE 3448 9630 3449

CMD ["shadow-cljs", "watch", "app"]