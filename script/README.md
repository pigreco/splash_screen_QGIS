# Scrapare i dati


`time (curl -sL "http://changelog.qgis.org/en/qgis/version/list/" | grep -oP '/en/qgis/version/[0-9].*/' | sort | uniq | while read p; do curl -sL "http://changelog.qgis.org""$p""gnu" | grep -E '^\*' | sed -r 's/^\* //g;s/ : /\t/g'| sed -e 's|^|'"$p"'\t|' | nl;done) >./out.txt`

aggiunge intestazione:

`sed -i '1s/^/     itemsNumber\tversion\tfeature\tdescription\n/' out.txt`


## esempio dell'output

     1	/en/qgis/version/2.6.0/	User Interface	Syntax highlighting code editor
     2	/en/qgis/version/2.6.0/	User Interface	Color palettes
     3	/en/qgis/version/2.6.0/	User Interface	Single select feature tool merged into select by rectangle
     4	/en/qgis/version/2.6.0/	User Interface	New color picker dialog
     5	/en/qgis/version/2.6.0/	User Interface	Add layer to map canvas behaviour
     6	/en/qgis/version/2.6.0/	User Interface	Add icon size 48 and 64
     7	/en/qgis/version/2.6.0/	User Interface	New colour buttons
     8	/en/qgis/version/2.6.0/	User Interface	Context menu for identify tool
     9	/en/qgis/version/2.6.0/	Symbology	Better random colour choice
    10	/en/qgis/version/2.6.0/	Symbology	Symbology user interface improvements
    11	/en/qgis/version/2.6.0/	Map Composer	Control over hiding print composer items from prints/exports
    12	/en/qgis/version/2.6.0/	Map Composer	Control over page printing for empty composer frames
    13	/en/qgis/version/2.6.0/	Map Composer	Item tree panel
    14	/en/qgis/version/2.6.0/	Map Composer	More control over appearance of composer arrow/line items
    15	/en/qgis/version/2.6.0/	Map Composer	Data defined control of composer items
    16	/en/qgis/version/2.6.0/	Map Composer	Composer images can be specifed as remote URLS
    
## osservazioni
```  
- grep -E '^\* > per filtrare le sole righe che iniziano per *
- s/* //g > per sostituire "* "con nulla
- s/ : /\t/g > per sostituire " : "con un tab, ovvero \t
```

## aggiornato a 3.8 Zanzibar - feature 

### feature from 2.12 to 3.8

version|count|percent|histogram
-------|-----|-------|--------
3.0.0|154|22.32|**************************************************
3.6.0|96|13.91|*******************************
2.16.0|93|13.48|******************************
3.4-LTR|77|11.16|*************************
3.2.0|73|10.58|***********************
2.14.0|66|9.57|*********************
3.8|58|8.41|******************
2.12.0|47|6.81|***************
2.18.0|26|3.77|********

### funded 3.8 Zanzibar

funded|count|percent|histogram
------|-----|-------|------
ND|30|51.72|***************
North Road |12|20.69|******
SMEC/SJ |6|10.34|***
Kanton Schaffhausen |3|5.17|*
anonymous |2|3.45|*
Andreas Neumann |1|1.72|
Northumberland National Park Authority |1|1.72|
Crowdfunding: More QGIS 3D |1|1.72|
ICSM |1|1.72|
Oslandia |1|1.72|

### developer 3.8 Zanzibar

developer|count|percent|histogram
---------|-----|-------|------
Nyall Dawson (North Road) |23|39.66|***********
Mathieu Pellerin |8|13.79|****
ND|5|8.62|**
Olivier Dalang and OPENGIS.ch |2|3.45|*
Alessandro Pasotti |2|3.45|*
Matthias Kuhn |2|3.45|*
Martin Dobias |1|1.72|
Peter Petrik (Lutra Consulting) |1|1.72|
Martin Dobias (Lutra Consulting) |1|1.72|
Jürgen Fischer|1|1.72|
Tamas Szekeres |1|1.72|
Julien Cabieces |1|1.72|
Matteo Nastasi |1|1.72|
Loïc Bartoletti (Oslandia) |1|1.72|
Jürgen Fischer with Matthias Kuhn |1|1.72|
Raymond Nijssen |1|1.72|
Marcel-Dančák |1|1.72|
Rashad Kanavath |1|1.72|
epifanio |1|1.72|
Alexander Bruy |1|1.72|
David Signer OPENGIS.ch|1|1.72|
henrik|1|1.72|

### feature 3.8 Zanzibar

feature|count|percent|histogram
-------|-----|-------|------
Processing|18|31.03|*********
Symbology|7|12.07|***
Data Providers|5|8.62|**
Expressions|5|8.62|**
3D Features|4|6.90|**
User Interface|3|5.17|*
Digitising|2|3.45|*
General|2|3.45|*
Labelling|2|3.45|*
Map Composer|2|3.45|*
Programmability|2|3.45|*
Browser|1|1.72|
Forms and Widgets|1|1.72|
Map Tools|1|1.72|
Notable Fixes|1|1.72|
Plugins|1|1.72|
QGIS Server|1|1.72|


analisi fatta con [VisiData](https://medium.com/tantotanto/visidata-il-coltellino-svizzero-per-i-dati-che-probabilmente-non-conosci-2209ffd4fa39)

[dati scrapati](https://data.world/pigrecoinfinito/qgis-versioni-vs-feature)
