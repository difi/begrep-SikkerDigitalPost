XSD-er
===========================

Oversikt over XSD-er for [Sikker digital post](http://begrep.difi.no/SikkerDigitalPost/).

Grunnen til at vi lagrer disse lokalt er for å sikre at verktøy ikke trenger å være online for å kunne jobbe med XSD-ene. For at dette skal fungere må også referanser til URLer endres til å peke på lokale filer. For de filene vi har endret på er det inkludert en bash-kommando for å vise hvilke endringer som er gjort. Disse kommandoene kan pastes rett inn i en terminal, og kan kjøres fra katalogen `SikkerDigitalPost/xsd`.






Rot (samme katalog som denne filen ligger i)
-------------

#### sdp-kvittering.xsd, sdp-manifest.xsd, sdp-melding.xsd

Beskrivelse: http://begrep.difi.no/SikkerDigitalPost/






asic-e/
-----------------

#### ts_102918v010201.xsd

Skjema for **META-INF/signatures.xml** i en ASiC-E bundle.

Original:
http://www.etsi.org/deliver/etsi_ts/102900_102999/102918/01.02.01_60/ts_102918v010201p0.zip

Endringer:
```bash
curl -Ls http://www.etsi.org/deliver/etsi_ts/102900_102999/102918/01.02.01_60/ts_102918v010201p0.zip \
| funzip | diff -uw --strip-trailing-cr - asic-e/ts_102918v010201.xsd | vim -R -
```

Kommandoen piper til vim for å vise diff med farger. For å avslutte vim, skriv `:q` og trykk Enter. Eventuelt kan du droppe den siste pipen til vim for å vise diff rett i terminalen (uten farger).





ebxml/
----------------------

Skjemaer som hører til ebXML-standarden.

#### ebbp-signals-2.0.xsd

Original: http://docs.oasis-open.org/ebxml-bp/2.0.4/ebbp-signals-2.0.4.xsd

Endringer:
```bash
curl -Ls http://docs.oasis-open.org/ebxml-bp/2.0.4/ebbp-signals-2.0.4.xsd \
| diff -uw --strip-trailing-cr - ebxml/ebbp-signals-2.0.xsd | vim -R -
```

#### ebms-header-3_0-200704.xsd

Original: http://docs.oasis-open.org/ebxml-msg/ebms/v3.0/core/os/ebms-header-3_0-200704.xsd

Endringer:
```bash
curl -Ls http://docs.oasis-open.org/ebxml-msg/ebms/v3.0/core/os/ebms-header-3_0-200704.xsd \
| diff -uw --strip-trailing-cr - ebxml/ebms-header-3_0-200704.xsd | vim -R -
```

### Referanser:

- http://docs.oasis-open.org/ebxml-bp/2.0.4/OS/signalSchema/documentation/ebxmlbp-v2.0.4-Document-os-SignalSchema-en.html



etsi/
-----------------------

#### XAdES.xsd

Original: http://uri.etsi.org/01903/v1.3.2/XAdES.xsd

Endringer:
```bash
curl -Ls http://uri.etsi.org/01903/v1.3.2/XAdES.xsd \
| diff -uw --strip-trailing-cr - etsi/XAdES.xsd | vim -R -
```





oppslag/
---------------------------
Difis oppslagstjeneste: http://begrep.difi.no/Oppslagstjenesten/

#### oppslagstjeneste-metadata-14-05.xsd

Original:
http://begrep.difi.no/Oppslagstjenesten/xsd/oppslagstjeneste-metadata-14-05.xsd

Endringer:
```bash
curl -Ls http://begrep.difi.no/Oppslagstjenesten/xsd/oppslagstjeneste-metadata-14-05.xsd \
| diff -uw --strip-trailing-cr - oppslag/oppslagstjeneste-metadata-14-05.xsd | vim -R -
```




SBDH20040506-02/
----------------------------------------

#### StandardBusinessDocumentHeader.xsd og tilhørende XSD-er

Original: `TODO`

Disse er uendret fra originalene.





ubl/
-----------------------------
Universal Business Language (UBL)

Originaler: http://docs.oasis-open.org/ubl/prd4-UBL-2.1/xsd/common/

Ingen endringer.


w3/
----------------------
XSD-er som hører til standarder definert av World Wide Web Consortium (http://w3.org).


#### exc-c14n.xsd

Original:
http://www.w3.org/TR/2002/REC-xml-exc-c14n-20020718/exc-c14n.xsd

Endringer:
```bash
curl -sL http://www.w3.org/TR/2002/REC-xml-exc-c14n-20020718/exc-c14n.xsd \
| diff -uw --strip-trailing-cr - w3/exc-c14n.xsd | vim -R -
```


#### soap-envelope.xsd

Skjema for SOAP/1.2 envelope.

Original: http://www.w3.org/2003/05/soap-envelope/

Endringer:
```bash
curl -sL http://www.w3.org/2003/05/soap-envelope/ \
| diff -uw --strip-trailing-cr - w3/soap-envelope.xsd | vim -R -
```


#### xenc-schema.xsd

Original: http://www.w3.org/TR/2002/REC-xmlenc-core-20021210/xenc-schema.xsd

Endringer:
```bash
curl -sL http://www.w3.org/TR/2002/REC-xmlenc-core-20021210/xenc-schema.xsd \
| diff -uw --strip-trailing-cr - w3/xenc-schema.xsd | vim -R -
```


#### xlink.xsd

Original: http://www.oasis-open.org/committees/ebxml-msg/schema/xlink.xsd

Ingen endringer.

> Denne filen ligner ikke på noen av xlink.xsd-filene man finner på w3.org.
> Den refereres til fra
> http://docs.oasis-open.org/ebxml-bp/2.0.4/OS/signalSchema/documentation/ebxmlbp-v2.0.4-Document-os-SignalSchema-en.html.

> Mer offisielle xlink.xsd-filer finnes på http://www.w3.org/1999/xlink.xsd
> og http://www.w3.org/XML/2008/06/xlink.xsd. Kan disse brukes istedet? Dersom
> vi plutselig tar ibruk noe annet som forventer standard xlink.xsd, så får vi helt sikkert problemer
> med navnekollisjoner.


#### xml.xsd

Original: http://www.w3.org/2001/xml.xsd

Ingen endringer.


#### xmldsig-core-schema.xsd

Original: http://www.w3.org/TR/xmldsig-core/xmldsig-core-schema.xsd

Endringer:
```bash
curl -sL http://www.w3.org/TR/xmldsig-core/xmldsig-core-schema.xsd \
| diff -uw --strip-trailing-cr - w3/xmldsig-core-schema.xsd | vim -R -
```





xmlsoap/
---------------------

#### envelope.xsd

Skjema for SOAP/1.1 envelope.

Original: http://schemas.xmlsoap.org/soap/envelope/

Ingen endringer.
