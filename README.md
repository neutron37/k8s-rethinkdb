# RethinkDB Image for Kubernetes

This is the Docker image that's the basis for a [Kubernetes RethinkDB Cluster](https://github.com/rosskukulinski/kubernetes-rethinkdb-cluster).

## Dependencies (Updated 2018-08-19)

* Dockerfile
  * rethinkdb:2.3.6
  * https://github.com/stedolan/jq/releases/download/jq-1.5/jq-linux64
  * https://github.com/Yelp/dumb-init/releases/download/v1.2.2/dumb-init_1.2.2_amd64
* Dockerfile.build
  * golang:1.10.3
* probe
  * gopkg.in/gorethink/gorethink.v4
