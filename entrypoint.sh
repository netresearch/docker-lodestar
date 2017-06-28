#!/bin/bash

set -o pipefail

echo "
lode.explorer.service.baseuri=$SERVICE_BASE_URI

lode.sparqlendpoint.url=$ENDPOINT_URL
#lode.sparqlendpoint.port=1111
lode.sparql.query.maxlimit=$MAX_LIMIT

lode.explorer.toprelationship=$TOP_RELATIONSHIP
lode.explorer.ignore.relationship=$IGNORE_RELATIONSHIP
lode.explorer.ignore.types=$IGNORE_TYPES
lode.explorer.ignore.blanknode=$IGNORE_BLANKNODES
lode.explorer.label=$LABEL
lode.explorer.description=$DESCRIPTION
lode.explorer.depict=$DEPICT
lode.explorer.max.objects=$MAX_OBJECTS
lode.explorer.useInference=$USE_INFERENCE
" > $CATALINA_HOME/webapps/lodestar/WEB-INF/classes/lode.properties

exec "$@"