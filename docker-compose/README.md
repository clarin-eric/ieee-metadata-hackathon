# Docker compose configuration

The configurations presented here allow you to use Docker to quickly get an instance of
the [VLO](https://github.com/clarin-eric/VLO) (web application + Solr server) up and
running. The instructions below explain how to do this, and how to import data (for 
example the [bundled sample CMDI files](../examples)) into this instance.

## How to run
Make sure you have [Docker](https://wwww.docker.com) installed. This should include
[docker-compose](https://docs.docker.com/compose/) by default. Make a clone of this
repository and bring the service up:

```sh
git clone https://github.com/clarin-eric/ieee-metadata-hackathon
cd ieee-metadata-hackathon/docker-compose/cmdi-hackathon
docker-compose up -d
```

If this produces no errors, then after a minute or so, the output of
 `docker-compose ps` should tell you that two service are up (and one exited because
 it only served to initalise the Solr server).

The following services should then be available via your web browser:

* VLO web interface: http://localhost:8181
* VLO Solr service: http://localhost:8983

If you are running this for the first time, there will be no records (i.e. no search 
results). We can add records by importing metadata into the VLO as described in the next
section.

## Importing data

Let's assume you have a few directories with `.cmdi` files in 
`${METADATA_DIR}`. You can, for example, use the [bundled sample CMDI files](../examples):

```sh
METADATA_DIR=~/hackathon-files/samples/

#let's retrieve some sample data to import
(mkdir -p "${METADATA_DIR}" &&
	cd "${METADATA_DIR}" &&
	curl "https://raw.githubusercontent.com/clarin-eric/ieee-metadata-hackathon/master/examples/cmdi-metadata-samples.tar.bz2" | tar -Jxf -
)
```

Make sure that you have the right directory structure: `${METADATA_DIR}` should be a
directory consisting of directories, each of which contain a set of .cmdi files.

Now run the following command (still in 
`ieee-metadata-hackathon/docker-compose/cmdi-hackathon`):

```sh
docker-compose run -v ${METADATA_DIR}:/srv/vlo-data/hackathon --entrypoint "/app/run-import.sh" -T --rm vlo_web
```

You will be able to monitor the import process by looking at the output. Depending on
the number of records included in the set, import will take some time between a few 
minutes to a few hours. After, and in many cases even during the import you will be able
to see the intermediate result reflected in your local VLO and Solr services.
