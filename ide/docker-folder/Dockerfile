FROM ubuntu:14.04

RUN apt-get update

# install required tools

RUN apt-get install curl -y
RUN apt-get install git -y

# install node.js and npm

RUN curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -
RUN apt-get install -y nodejs

# install bower

RUN npm install --global bower

# install ruby

RUN apt-get install git-core curl zlib1g-dev build-essential libssl-dev libreadline-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt1-dev libcurl4-openssl-dev python-software-properties libffi-dev -y
#RUN cd
RUN git clone git://github.com/sstephenson/rbenv.git ~/.rbenv
RUN echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc
RUN echo 'eval "$(rbenv init -)"' >> ~/.bashrc
#RUN export PATH="$HOME/.rbenv/bin:$PATH"
ENV HOME=/root
ENV PATH=$HOME/.rbenv/bin:$HOME/.rbenv/plugins/ruby-build/bin:$HOME/.rbenv/shims:$PATH
RUN echo $HOME
RUN echo $PATH
RUN git clone git://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build
RUN echo 'export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"' >> ~/.bashrc
RUN . ~/.bashrc
RUN rbenv install -v 2.5.1
RUN rbenv global 2.5.1
RUN echo $PATH
RUN gem install sass
RUN echo $PATH
#RUN /bin/bash -l -c "gem install sass"

# install grunt

RUN npm install --global grunt-cli

COPY ./start_ide.sh ./
RUN chmod u+x start_ide.sh
ENTRYPOINT ["/start_ide.sh"]

# CMD tail -f /dev/null
