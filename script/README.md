# Scrapare i dati


```
time (curl -kL 'https://changelog.qgis.org/en/qgis/version/list/' -H 'User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36' --compressed | grep -oP '/en/qgis/version/[0-9].*/' | sort | uniq | curl -sL "https://changelog.qgis.org/en/qgis/version/3.16/gnu" -H 'User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36' --compressed | grep -E '^\*' | sed -r 's/^\* //g;s/ : /\t/g'| sed -e 's|^|'"$p"'\t|' | nl >./out.txt) >./out.txt
```

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
------|------|------|-----
ND|30|50.00|***************
North Road |12|20.00|******
SMEC/SJ |6|10.00|***
Kanton Schaffhausen |3|5.00|*
anonymous |2|3.33|*
A.R.P.A. Piemonte |2|3.33|*
Oslandia |1|1.67|
ICSM |1|1.67|
Andreas Neumann |1|1.67|
Northumberland National Park Authority |1|1.67|
Crowdfunding: More QGIS 3D |1|1.67|

### developer 3.8 Zanzibar

developer|count|percent|histogram
---------|-----|-------|-------
Nyall Dawson (North Road) |23|38.33|***********
Mathieu Pellerin |8|13.33|****
ND|5|8.33|**
Alessandro Pasotti |4|6.67|**
Matthias Kuhn |2|3.33|*
Olivier Dalang and OPENGIS.ch |2|3.33|*
Loïc Bartoletti (Oslandia) |1|1.67|
henrik|1|1.67|
Matteo Nastasi |1|1.67|
Raymond Nijssen |1|1.67|
Marcel-Dančák |1|1.67|
Rashad Kanavath |1|1.67|
epifanio |1|1.67|
Alexander Bruy |1|1.67|
Jürgen Fischer|1|1.67|
Tamas Szekeres |1|1.67|
Julien Cabieces |1|1.67|
"David Signer| OPENGIS.ch "|1|1.67|
Jürgen Fischer with Matthias Kuhn |1|1.67|
Martin Dobias |1|1.67|
Peter Petrik (Lutra Consulting) |1|1.67|
Martin Dobias (Lutra Consulting) |1|1.67|

### feature 3.8 Zanzibar

feature|count|percent|histogram
-------|-----|-------|-----
Processing|18|30.00|*********
Symbology|7|11.67|***
Expressions|5|8.33|**
Data Providers|5|8.33|**
3D Features|4|6.67|**
User Interface|3|5.00|*
Forms and Widgets|3|5.00|*
Labelling|2|3.33|*
Digitising|2|3.33|*
Map Composer|2|3.33|*
General|2|3.33|*
Programmability|2|3.33|*
Map Tools|1|1.67|
Browser|1|1.67|
QGIS Server|1|1.67|
Plugins|1|1.67|
Notable Fixes|1|1.67|


## QGIS 2.0 TO 3.8 FEATURE

data|versione|count|percent|histogram
----|--------|-----|-------|------
2019-06-21|QGIS_3.8.0|60|6.69|*******************
2019-02-22|QGIS_3.6.0|96|10.70|*******************************
2018-10-26|QGIS_3.4-LTR|77|8.58|*************************
2018-06-22|QGIS_3.2.0|73|8.14|***********************
2018-02-23|QGIS_3.0.0|154|17.17|**************************************************
2015-02-20|QGIS_2.8.0|34|3.79|***********
2014-11-01|QGIS_2.6.0|39|4.35|************
2014-06-27|QGIS_2.4.0|19|2.12|******
2014-02-22|QGIS_2.2.0|31|3.46|**********
2016-10-21|QGIS_2.18.0|23|2.56|*******
2016-07-08|QGIS_2.16.0|93|10.37|******************************
2016-02-26|QGIS_2.14.0|66|7.36|*********************
2015-10-23|QGIS_2.12.0|47|5.24|***************
2015-06-26|QGIS_2.10.0|30|3.34|*********
2013-09-08|QGIS_2.0.0|55|6.13|*****************


analisi fatta con [VisiData](https://medium.com/tantotanto/visidata-il-coltellino-svizzero-per-i-dati-che-probabilmente-non-conosci-2209ffd4fa39)

[dati scrapati](https://data.world/pigrecoinfinito/qgis-versioni-vs-feature)
