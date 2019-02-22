# Scrapare i dati


`time (curl -sL "http://changelog.qgis.org/en/qgis/version/list/" | grep -oP '/en/qgis/version/[0-9].*/' | sort | uniq | while read p; do curl -sL "http://changelog.qgis.org""$p""gnu" | grep -E '^\*' | sed -r 's/^\* //g;s/ : /\t/g'| sed -e 's|^|'"$p"'\t|' | nl;done) >./out.txt`


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

## aggiornato a 3.6 Noosa

versione|count|percent|histogram
--------|-----|-------|-------
3.0.0|154|22.75|**************************************************
2.16.0|93|13.74|******************************
3.4-LTR|77|11.37|*************************
3.6.0|75|11.08|************************
3.2.0|73|10.78|***********************
2.14.0|66|9.75|*********************
2.12.0|47|6.94|***************
2.8|35|5.17|***********
2.10|31|4.58|**********
2.18.0|26|3.84|********

[dati scrapati](https://data.world/pigrecoinfinito/qgis-versioni-vs-feature)