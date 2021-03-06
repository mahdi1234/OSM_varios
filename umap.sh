#!/bin/bash

wget -O mlekomaty.json  'http://overpass-api.de/api/interpreter?data=%5Bout%3Ajson%5D%5Btimeout%3A100%5D%3Barea%283600051684%29%2D%3E%2EsearchArea%3B%28node%5B%22amenity%22%3D%22vending%5Fmachine%22%5D%5B%22vending%22%7E%22milk%22%5D%28area%2EsearchArea%29%3Bway%5B%22amenity%22%3D%22vending%5Fmachine%22%5D%5B%22vending%22%7E%22milk%22%5D%28area%2EsearchArea%29%3Brelation%5B%22amenity%22%3D%22vending%5Fmachine%22%5D%5B%22vending%22%7E%22milk%22%5D%28area%2EsearchArea%29%3B%29%3Bout%3B%3E%3Bout%20center%20qt%3B'

sleep 300
wget -O bezobalace.json  'http://overpass-api.de/api/interpreter?data=%5Bout%3Ajson%5D%5Btimeout%3A100%5D%3Barea%283600438171%29%2D%3E%2EsearchArea%3B%28node%5B%22bulk%5Fpurchase%22%3D%22yes%22%5D%28area%2EsearchArea%29%3Bway%5B%22bulk%5Fpurchase%22%3D%22yes%22%5D%28area%2EsearchArea%29%3Brelation%5B%22bulk%5Fpurchase%22%3D%22yes%22%5D%28area%2EsearchArea%29%3Bnode%5B%22bulk%5Fpurchase%22%3D%22only%22%5D%28area%2EsearchArea%29%3Bway%5B%22bulk%5Fpurchase%22%3D%22only%22%5D%28area%2EsearchArea%29%3Brelation%5B%22bulk%5Fpurchase%22%3D%22only%22%5D%28area%2EsearchArea%29%3B%29%3Bout%3B%3E%3Bout%20center%20qt%3B'

sleep 300
#[out:json][timeout:100];
#{{geocodeArea:Czechia}}->.searchArea;
#(
#  // query part for: “"recycling:metal"=yes”
#  node["recycling:metal"="yes"](area.searchArea);
#  way["recycling:metal"="yes"](area.searchArea);
#  relation["recycling:metal"="yes"](area.searchArea);
#  node["recycling:scrap_metal"="yes"](area.searchArea);
#  way["recycling:scrap_metal"="yes"](area.searchArea);
#  relation["recycling:scrap_metal"="yes"](area.searchArea);
#);
#out center qt;
wget -O metal.json 'https://overpass-api.de/api/interpreter?data=%5Bout%3Ajson%5D%5Btimeout%3A100%5D%3Barea%283600051684%29%2D%3E%2EsearchArea%3B%28node%5B%22recycling%3Ametal%22%3D%22yes%22%5D%28area%2EsearchArea%29%3Bway%5B%22recycling%3Ametal%22%3D%22yes%22%5D%28area%2EsearchArea%29%3Brelation%5B%22recycling%3Ametal%22%3D%22yes%22%5D%28area%2EsearchArea%29%3Bnode%5B%22recycling%3Ascrap%5Fmetal%22%3D%22yes%22%5D%28area%2EsearchArea%29%3Bway%5B%22recycling%3Ascrap%5Fmetal%22%3D%22yes%22%5D%28area%2EsearchArea%29%3Brelation%5B%22recycling%3Ascrap%5Fmetal%22%3D%22yes%22%5D%28area%2EsearchArea%29%3B%29%3Bout%20qt%20center%3B%0A'

sleep 300
wget -O cooking_oil.json 'http://overpass-api.de/api/interpreter?data=%5Bout%3Ajson%5D%5Btimeout%3A100%5D%3Barea%283600051684%29%2D%3E%2EsearchArea%3B%28node%5B%22recycling%3Acooking%5Foil%22%3D%22yes%22%5D%28area%2EsearchArea%29%3Bway%5B%22recycling%3Acooking%5Foil%22%3D%22yes%22%5D%28area%2EsearchArea%29%3Brelation%5B%22recycling%3Acooking%5Foil%22%3D%22yes%22%5D%28area%2EsearchArea%29%3B%29%3Bout%3B%3E%3Bout%20center%20qt%3B'

sleep 300
wget -O small_appliance.json 'http://overpass-api.de/api/interpreter?data=%5Bout%3Ajson%5D%5Btimeout%3A100%5D%3Barea%283600051684%29%2D%3E%2EsearchArea%3B%28node%5B%22recycling%3Asmall%5Felectrical%5Fappliances%22%3D%22yes%22%5D%28area%2EsearchArea%29%3Bway%5B%22recycling%3Asmall%5Felectrical%5Fappliances%22%3D%22yes%22%5D%28area%2EsearchArea%29%3Brelation%5B%22recycling%3Asmall%5Felectrical%5Fappliances%22%3D%22yes%22%5D%28area%2EsearchArea%29%3Bnode%5B%22recycling%3Asmall%5Fappliances%22%3D%22yes%22%5D%28area%2EsearchArea%29%3Bway%5B%22recycling%3Asmall%5Fappliances%22%3D%22yes%22%5D%28area%2EsearchArea%29%3Brelation%5B%22recycling%3Asmall%5Fappliances%22%3D%22yes%22%5D%28area%2EsearchArea%29%3Bnode%5B%22recycling%3Aelectrical%5Fitems%22%3D%22yes%22%5D%28area%2EsearchArea%29%3Bway%5B%22recycling%3Aelectrical%5Fitems%22%3D%22yes%22%5D%28area%2EsearchArea%29%3Brelation%5B%22recycling%3Aelectrical%5Fitems%22%3D%22yes%22%5D%28area%2EsearchArea%29%3Bnode%5B%22recycling%3Aelectrical%5Fappliances%22%3D%22yes%22%5D%28area%2EsearchArea%29%3Bway%5B%22recycling%3Aelectrical%5Fappliances%22%3D%22yes%22%5D%28area%2EsearchArea%29%3Brelation%5B%22recycling%3Aelectrical%5Fappliances%22%3D%22yes%22%5D%28area%2EsearchArea%29%3B%29%3Bout%3B%3E%3Bout%20center%20qt%3B'

sleep 300
wget -O battery.json 'http://overpass-api.de/api/interpreter?data=%5Bout%3Ajson%5D%5Btimeout%3A100%5D%3Barea%283600051684%29%2D%3E%2EsearchArea%3B%28node%5B%22recycling%3Abatteries%22%3D%22yes%22%5D%28area%2EsearchArea%29%3Bway%5B%22recycling%3Abatteries%22%3D%22yes%22%5D%28area%2EsearchArea%29%3Brelation%5B%22recycling%3Abatteries%22%3D%22yes%22%5D%28area%2EsearchArea%29%3B%29%3Bout%3B%3E%3Bout%20center%20qt%3B'

sleep 300
wget -O bulbs.json 'http://overpass-api.de/api/interpreter?data=%5Bout%3Ajson%5D%5Btimeout%3A100%5D%3Barea%283600051684%29%2D%3E%2EsearchArea%3B%28node%5B%22recycling%3Alow%5Fenergy%5Fbulbs%22%3D%22yes%22%5D%28area%2EsearchArea%29%3Bway%5B%22recycling%3Alow%5Fenergy%5Fbulbs%22%3D%22yes%22%5D%28area%2EsearchArea%29%3Brelation%5B%22recycling%3Alow%5Fenergy%5Fbulbs%22%3D%22yes%22%5D%28area%2EsearchArea%29%3Bnode%5B%22recycling%3Afluorescent%5Ftubes%22%3D%22yes%22%5D%28area%2EsearchArea%29%3Bway%5B%22recycling%3Afluorescent%5Ftubes%22%3D%22yes%22%5D%28area%2EsearchArea%29%3Brelation%5B%22recycling%3Afluorescent%5Ftubes%22%3D%22yes%22%5D%28area%2EsearchArea%29%3B%29%3Bout%3B%3E%3Bout%20center%20qt%3B'
sed -i '/.*timestamp_.*/d' *.json
