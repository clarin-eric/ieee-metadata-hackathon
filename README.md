# CLARIN metadata hackathon

Part of the [IEEE Workshop on Big Data Metadata and Management (BDGMM 2018)](https://bigdatawg.nist.gov/bdgmm2018.html)
taking place in Berlin, Mar 19-20, 2018 in conjunction with [RDA Plenary 11](https://www.rd-alliance.org/plenaries/rda-eleventh-plenary-meeting-berlin-germany).
Please not that registration is required - see the [event page](https://bigdatawg.nist.gov/bdgmm2018.html) for details.

**The information on this page is not yet complete!** More will be added soon, so please check back regularly to find more details, examples and resources.

## Background

[CLARIN](https://www.clarin.eu) makes digital language resources available to scholars, researchers, students and citizen-scientists from all disciplines, especially in the humanities and social sciences. CLARIN harvests metadata (and converts it to CMDI where necessary) a few times per week from many sources. This harvested metadata constitutes the data set for this hackathon. Provided metadata adheres to the CMDI standard - see [clarin.eu/cmdi](https://www.clarin.eu/cmdi). A post-processed, searchable view of this metadata can be found in CLARIN's [Virtual Language Observatory](https://vlo.clarin.eu) (VLO).

More on IEEE, the organisers of the workshop this hackathon is part of, and big data can be found on the [event page](https://bigdatawg.nist.gov/bdgmm2018.html) and at [bigdata.ieee.org](https://bigdata.ieee.org/).

## Data sets

For this hackathon, we provide a snapshot of the harvested data at the following location:

https://vlo.clarin.eu/resultsets/snapshot/20180105/

There are several `.tar.bz2` files, which combined provide the content which is presented in the [VLO](https://vlo.clarin.eu). These sets are:
* [clarin.tar.bz2](https://vlo.clarin.eu/resultsets/snapshot/20180105/clarin.tar.bz2): metadata harvested from [CLARIN centres](https://www.clarin.eu/content/clarin-centres)
* [europeana.tar.bz2](https://vlo.clarin.eu/resultsets/snapshot/20180105/europeana.tar.bz2): metadata harvested from [Europeana](https://www.europeana.eu/), describing selected digital cultural heritage objects
* [others.tar.bz2](https://vlo.clarin.eu/resultsets/snapshot/20180105/others.tar.bz2): metadata harvested from other selected sources, describing language resources relevant to humanities and social humanities scholars

Individual files can also be browsed and accessed via [alpha-vlo.clarin.eu/data/snapshot/20180105](http://alpha-vlo.clarin.eu/data/snapshot/20180105/).

### API endpoints

* [SPARQL](https://www.w3.org/TR/sparql11-query/) endpoint of CMD2RDF: http://cmdi2rdf.meertens.knaw.nl/cmd2rdf
* [Solr](https://lucene.apache.org/solr/) index of the Virtual Language Observatory ([hackathon instance](http://hackathon.cmdi.clarin.eu/vlo)): `http://hackathon.cmdi.clarin.eu/solr/vlo-index/select`
  * An [Extended DisMax query parser](https://lucene.apache.org/solr/guide/7_0/the-extended-dismax-query-parser.html) is registered at this URL
  * Query example: [`select?q=description:ieee&rows=5`](http://hackathon.cmdi.clarin.eu/solr/vlo-index/select?q=description:ieee&rows=5)

### Other data sources
* CLARIN Component Registry: https://www.clarin.eu/componentregistry 
* CLARIN concept registry: https://concepts.clarin.eu
* VLO mapping definitions: https://github.com/clarin-eric/VLO-mapping 

### Examples

See the [examples](./examples) folder

## Docker

We prepared a docker-compose configuration that allows you to quickly set up a private
instance of the VLO and to import your own data into it. This might be helpful for
experimentation and provide improved performance. See the [docker-compose](./docker-compose)
folder for more information.

## Contact
* [Matej Durco](https://www.oeaw.ac.at/acdh/team/current-team/matej-durco/) (Austrian Centre for Digital Humanities)
* [Menzo Windhouwer](https://www.clarin.eu/person/menzo-windhouwer) (CLARIN ERIC/Meertens Instituut)
* [Twan Goosen](https://www.clarin.eu/person/twan-goosen) (CLARIN ERIC)
