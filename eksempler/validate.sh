#!/bin/bash

eksempler=$(dirname "$0")
xsds="${eksempler}/../xsd"

xmllint --noout --schema ${xsds}/sdp.xsd ${eksempler}/sdp*.xml
xmllint --noout --schema ${xsds}/SBDH20040506-02/StandardBusinessDocumentHeader.xsd ${eksempler}/sbdh.xml

