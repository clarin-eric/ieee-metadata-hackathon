#!/bin/bash
/app/init.sh
touch /opt/vlo/log/vlo-importer.log
tail -n0 -F /opt/vlo/log/vlo-importer.log &
cd /opt/vlo/bin/ && \
	nice sh vlo_solr_importer.sh
echo Done...
sleep 5
