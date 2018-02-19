# CMDI metadata examples

The file [cmdi-metadata-samples.tar.bz2](cmdi-metadata-samples.tar.bz2) contains sample CMDI files from two sets:

1. Instances of the profile *SpokenCorpusProfile*
1. Records from the *Wolfenbuettel Digital Library: Deutsche Digitale Bibliothek* collection
1. Records from the *Digital Library of Slovenia/Europeana* travel collection

The sections below provide some detail regarding these two profiles.

## Set 1: *SpokenCorpusProfile* records

The [SpokenCorpusProfile](https://catalog.clarin.eu/ds/ComponentRegistry#/?itemId=clarin.eu%3Acr1%3Ap_1422885449343&registrySpace=public)
is a general profile for the description of a spoken/speech corpus. It was created by the 
[Hamburg Centre for Speech Corpora (HZSK)](https://corpora.uni-hamburg.de/hzsk/en/home).

### Records

* [VLO search results](http://hackathon.cmdi.clarin.eu/vlo?q=_componentProfile:SpokenCorpusProfile) for records based on this profile
* [Solr query](http://hackathon.cmdi.clarin.eu/solr/vlo-index/select?q=_componentProfile:SpokenCorpusProfile&rows=10) for records based on this profile (note: example limited to 10 rows)

### Quality

* [Curation module page for the SpokenCorpusProfile profile](https://clarin.oeaw.ac.at/curate/#!ResultView/profile/id/clarin.eu:cr1:p_1422885449343)

### Challenge suggestions

* The metadata in this example set is of good quality. Therefore it lends itself to being
'mashed up' with other data sets. For example, some of the metadata records provide
_location_ information (e.g. [Sprachvariation in Norddeutschland (SiN)](http://hackathon.cmdi.clarin.eu/vlo/record?q=_componentProfile:SpokenCorpusProfile&docId=http_58__47__47_hdl.handle.net_47_11022_47_0000-0000-7EE2-4)).
This information is not available for filtering or shown prominently in the VLO. However
the information is available in the CMDI records and can be used to organise records
geographically for presentation and retrieval purposes. 
* Alternatively, the geographical information in the records could be aligned and with a
geographical database such as [GeoNames](http://www.geonames.org/) and annotated 
accordingly, thus enriching the metadata.

## Set 2: *Wolfenbuettel Digital Library* records

As described on its [website](http://www.hab.de/en/home/library/wolfenbuettel-digital-library.html), "[in] the Wolfenbüttel Digital Library the Herzog August Bibliothek presents in digital facsimile selected items from its collections which are rare, outstanding, frequently used, or currently most relevant for research".
The metadata for these items is collected by CLARIN in [Dublin Core](http://dublincore.org/specifications/)
(DC) format, then converted to CMDI (using the [OLAC-DcmiTerms profile](https://catalog.clarin.eu/ds/ComponentRegistry#/?itemId=clarin.eu%3Acr1%3Ap_1288172614026&registrySpace=public)) 
and thus made available in the VLO.

### Records

* [VLO search results](http://hackathon.cmdi.clarin.eu/vlo/search?fqType=collection:or&fq=collection:Wolfenbuettel+Digital+Library:+Deutsche+Digitale+Bibliothek) for records based on this profile
* [Solr query](http://hackathon.cmdi.clarin.eu/solr/vlo-index/select?q=collection:%22Wolfenbuettel+Digital+Library:+Deutsche+Digitale+Bibliothek%22&rows=10) for records based on this profile (note: example limited to 10 rows)

### Quality

By looking at an example in the VLO, such as the record 
["Schuldigste Trauer-Klage..."](http://hackathon.cmdi.clarin.eu/vlo/record?docId=oai_58_diglib.hab.de_58_ppn_656629045)
on the one hand, and its [representation in the Wolfenbuettel repository](http://opac.lbs-braunschweig.gbv.de/DB=2/XMLPRS=N/PPN?PPN=656629045) 
and the [resource viewer](http://diglib.hab.de/drucke/114-helmst-dr-29s/start.htm) on the other,
one can identify a number of potential improvements to what is represented in the DC
and CMDI metadata (see [OAI-PMH record](http://oai.hab.de/?verb=GetRecord&metadataPrefix=oai_dc&identifier=oai:diglib.hab.de:ppn_656629045)), and by extension to what is presented in the VLO:

* All metadata is in the German language but this is not specified anywhere
* Some fields are omitted in the CMDI/DC
metadata, such as `Anmerkung`, `Bibliogr. Zusammenhang`
* Some fields are conflated, for example the various contributors other than the author
all are represented as `dc:contributor` rather than for example `Drucker`
* The raw resource files are directly available as JPEG images (for example http://diglib.hab.de/drucke/114-helmst-dr-29s/00001.jpg),
as can be discovered easily by browsing through the resource viewer, but links to these are 
not provided in the metadata

Note that the [metadata in METS format](http://oai.hab.de/?verb=GetRecord&metadataPrefix=mets&identifier=oai:diglib.hab.de:ppn_656629045)
is much more complete and semantically transparent.

### Challenge suggestions

* Content language detection (add missing `xml:lang` attributes).
* Metadata completion based on external sources (CMDI vs METS - see above).
* Harmonisation of values in the 'subject' facet within the collection.

## Set 3: *Digital Library of Slovenia/Europeana* records

The [Digital Library of Slovenia](https://www.dlib.si/?=&language=eng) (dLib.si) provides
digital content in Slovenian and other languages. Much of the textual content has been 
automatically transcribed (using Optical Character Recognisation), leading to the
availability plain-text content, which is particularly valuable to digital humanities
scholars. The dLib.si is a content provider for [Europeana](http://www.europeana.eu). 
CLARIN in turn harvests selected sets of metadata from Europeana (as 
[EDM](https://pro.europeana.eu/page/edm-documentation)), and converts
these to CMDI to make the metadata records available in the VLO. CLARIN chose to include a
subset of dLib.si records that originally was compiled in the context of the
[EuropeanaTravel](https://pro.europeana.eu/project/europeanatravel) project. This set 
contains descriptions for and links to over 600 text resources, mostly books related to
travel such as travel guides. It covers various languages including Slovenien, German,
English, French and Italian.

### Records

* [VLO search results](http://hackathon.cmdi.clarin.eu/vlo?fqType=collection:or&fq=collection:92068_Ag_Slovenia_ETravel&fqType=resourceClass:or&fq=resourceClass:TEXT)
* [Solr query](http://hackathon.cmdi.clarin.eu/solr/vlo-index/select?q=collection:%2292068_Ag_Slovenia_ETravel%22&rows=10) for records based on this profile (note: example limited to 10 rows)
* [Europeana collection browser](https://www.europeana.eu/portal/en/search?q=europeana_collectionName%3A%2892068_Ag_Slovenia_ETravel%29)
* [OAI-PMH result with a selection of EDM records](92068_Ag_Slovenia_ETravel.oai.xml)

### Quality

Europeana provides metadata in the EDM format, which is based on Linked Data principles
and builds on well-established vocabularies such as Dublin Core, allowing for clear
semantics. However, aggregating from many different sources, Europeana has to largely 
depend on the efforts of metadata providers when it comes to providing good quality 
metadata and making use of the features of the framework. In the conversion to CMDI,
preservation of as much of the available information is attempted.

Looking at the data set at hand, we can conclude that the quality of the metadata is quite
good: there are titles, descriptions as well as values in most of the facets and
licence/availability information for all records. Moreover, there are direct records
to PDF and plain text documents from the metadata records. One clear issue is that nearly
all information is in Slovenian, but for a large part of this information this is not
explicitly indicated. For example, looking at the original metadata provided by
Europeana (i.e. an EDM record) for a single item we can see the following:

```
<dc:source xmlns:dc="http://purl.org/dc/elements/1.1/" xml:lang="slv">Narodna in
	univerzitetna knjižnica, Slovenija</dc:source>
<dc:subject xmlns:dc="http://purl.org/dc/elements/1.1/">etnologija</dc:subject>
<dc:subject xmlns:dc="http://purl.org/dc/elements/1.1/">Völkerkunde</dc:subject>
<dc:title xmlns:dc="http://purl.org/dc/elements/1.1/">Ethnographie der österreichischen
	Monarchie von Frh. Karl von Czoernig. M. 1 ethnograph. Karte in 4 Blättern. I. u. II/III
	m. 1 ethnogr. Karte in 4 Blättern</dc:title>
```

The `subject` labels could be plausibly identified as Slovenian and German respectively.
Notice that, in contrast, the `source` field does have an `@xml:lang` attribute indicating
that the text content is in Slovenian.

This data set, especially in EDM form, or in CMDI form making use of the concept links
defined in the [profile](https://catalog.clarin.eu/ds/ComponentRegistry#/?itemId=clarin.eu%3Acr1%3Ap_1475136016208&registrySpace=public),
is highly suitable for data mashups on basis of linked data approaches.

### Challenge suggestions

* Content language detection: not all values have proper content language annotations
(`@xml:lang`), which would be preferable as the metadata is clearly multilingual.
* The linked resources are accessible in various formats, including plain text, which
opens up interesting possibilities. For example, you may be able to train a model that
can generate (aspects of) metadata based on the resource content.