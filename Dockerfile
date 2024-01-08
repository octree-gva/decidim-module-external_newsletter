FROM hfroger/decidim:0.26-dev
ENV RAILS_ENV=development \
    NODE_ENV=development \
    ROOT=/home/decidim/app
COPY . /home/decidim/decidim_external_newsletter
COPY ./contrib/decidim/overrides/config $ROOT/config

RUN cd $ROOT \ 
  && echo "gem \"deface\", \">= 1.5\"" >> Gemfile \
  && echo "gem \"decidim-external_newsletter\", path: \"../decidim_external_newsletter\"" >> Gemfile \
  && bundle config set without "" \
  && bundle config set path "vendor" \
  && bundle install \
  && npm install -D webpack-dev-server \
  && npm i

EXPOSE 3000
EXPOSE 3035
ENTRYPOINT ["bin/docker-entrypoint"]
CMD ["sleep", "infinity"]