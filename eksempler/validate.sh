#!/bin/bash

xmllint --noout --schema ../xsd/sdp.xsd sdp*.xml
xmllint --noout --schema ../xsd/SBDH20040506-02/StandardBusinessDocumentHeader.xsd sbdh.xml

