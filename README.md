# Lodestar

This is a docker image for [EBISPOT Lodestar](http://ebispot.github.io/lodestar/) based on [tomcat](https://hub.docker.com/_/tomcat/).

## What is Lodestar

> Lodestar is a Linked Data Browser and SPARQL endpoint. Lodestar is a Java based web app that can wrap any existing SPARQL endpoint to provide a set of additional SPARQL and Linked Data services. Lodestar was developed to provide a consistent set of SPARQL and Linked Data services across the European Bioinformatics Institute (EBI).

*(Quoted from [Lodestar website](http://ebispot.github.io/lodestar/))*

## How to use this image

### Run

```bash
docker run --name lodestar -p 8080:8080 -d netresearch/lodestar
```

Navigate to e.g. http://localhost:8080/lodestar/

### Environment variables

#### ENDPOINT_URL 
SPARQL endpoint to use
**Default:** http://dbpedia.org/sparql

#### MAX_LIMIT
> Set the max number of results returned by your sparql endpoint
**Default:** 1000

#### TOP_RELATIONSHIP 
> List the relations to show at the top in the box at the top of the linkded data explorer page
**Default:** http://xmlns.com/foaf/0.1/page,http://purl.org/dc/terms/identifier

#### IGNORE_RELATIONSHIP 
> List any predicates that you want to hide in the HTML view of the linked data browser, not type is already dealt with by lodestar so we ignore it as we don't want to show it twice
**Default:** http://www.w3.org/1999/02/22-rdf-syntax-ns#type

#### IGNORE_TYPES 
> List any resource types (classes) that you want to hide form the linked data HTML view
**Default:** http://www.w3.org/2000/01/rdf-schema#Resource,http://www.w3.org/2002/07/owl#Class,http://www.w3.org/2002/07/owl#Thing,http://www.w3.org/2002/07/owl#NamedIndividual

#### IGNORE_BLANKNODES 
> Ignore blank nodes in the HTML view
**Default:** true

#### LABEL 
> Set the predicates used to describe resource labels (ordered in preference)
**Default:** http://www.w3.org/2000/01/rdf-schema#label,http://www.w3.org/2004/02/skos/core#prefLabel

#### DESCRIPTION 
> Set the predicates used to provide a description for resources
**Default:**  http://purl.org/dc/terms/description,http://purl.org/dc/elements/1.1/description,http://www.w3.org/2004/02/skos/core#definition

#### DEPICT
> Set the predicates that link to depictions of resources
**Default:** http://xmlns.com/foaf/0.1/depiction

#### MAX_OBJECTS 
> Set the max number of objects to show for a given resource in the HTML view
**Default:** 50

#### USE_INFERENCE 
> Specifies if the query engine should use any inference when answering queries. This should be false when querying over http and is only relevant when using the virtuoso JDBC configuration at the moment
**Default:** false

#### SERVICE_BASE_URI
Base URI for the service - seems to play no further role but is required to be set in the lode.properties and thus menioned here.
**Default:** http://localhost:8080/lodestar

## Virtuoso support
Lodestar allows to connect to Virtuoso directly via JDBC which requires some additional build steps which are just not implemented yet. Feel free to implement them and file a pull request on https://github.com/netresearch/docker-lodestar. Anyway you of course can connect to Virtuoso through its SPARQL endpoint.
