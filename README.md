# docker-go-swagger

Contains an implementation of [Swagger 2.0](http://swagger.io/). It knows how to serialize and 
deserialize swagger specifications.

## Go-swagger project:

[go-swagger/go-swagger](https://github.com/go-swagger/go-swagger). It contains its own implementation docker image, but I have a problem, due to the fact that it does not have gcc.

## Docs:

https://goswagger.io/

## Usage:

1. Add comments to your API source code (see [swagger.json generation](https://goswagger.io/generate/spec.html)). 
2. Generate swagger.json:
```
$ docker run  -rm \
		-v "local/project/path":/go/src/your/project \
		-w /go/src/your/project \
		flexconstructor/go-swagger generate spec \
		-o :/go/src/your/project/swagger.json

```

3. Run UI:

```
$ docker run  \
		-v "local/project/path":/go/src/your/project \
		-w /go/src/your/project \
		-p [port:port] \
		flexconstructor/go-swagger swagger serve ./swagger.json \
 		--flavor=swagger \
 		--port=[port]

```

## Make:

Build image:

```
$ make image

```

Test image:

```
$ make test

```