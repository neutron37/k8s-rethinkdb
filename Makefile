IMAGE=neutron37/k8s-rethinkdb
TAG=2.3.6-v1

probe:
	./build-probe.sh

image: probe
	docker build -t ${IMAGE}:${TAG} .

push: image
	docker push ${IMAGE}:${TAG}
