# toposoid-scala-lib
This repository is a collection of scala libraries used in the toposoid project to build docker images.
Toposoid is a knowledge base construction platform.(see [Toposoid　Root Project](https://github.com/toposoid/toposoid.git))

## Requirements
* Docker version 20.10.x, or later

## Usage
```
#Set as base image in Dockerfile
#${VERSION} Set the version of the Docker image appropriately
FROM toposoid/toposoid-scala-lib:${VERSION}
```

## License
toposoid/toposoid-scala-lib is Open Source software released under the [Apache 2.0 license](https://www.apache.org/licenses/LICENSE-2.0.html).

## Author
* Makoto Kubodera([Linked Ideal LLC.](https://linked-ideal.com/))

Thank you!
