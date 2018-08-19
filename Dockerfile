FROM rethinkdb:2.3.6

MAINTAINER Neutron37 <neutron37@indieops.berlin>

RUN apt-get update && \
    apt-get install -yq curl && \
    rm -rf /var/cache/apt/* && rm -rf /var/lib/apt/lists/*

# https://stedolan.github.io/jq/
ADD https://github.com/stedolan/jq/releases/download/jq-1.5/jq-linux64 /usr/bin/jq
RUN chmod +x /usr/bin/jq

# https://github.com/Yelp/dumb-init
ADD https://github.com/Yelp/dumb-init/releases/download/v1.2.2/dumb-init_1.2.2_amd64 /usr/local/bin/dumb-init
RUN chmod +x /usr/local/bin/dumb-init

COPY ./run.sh ./probe ./ready-probe.sh /
RUN chmod u+x /run.sh /probe /ready-probe.sh

ENTRYPOINT ["/usr/local/bin/dumb-init", "/run.sh"]
