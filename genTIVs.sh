#!/bin/sh
tivdcfix=(30 40 50 55 60 70 75 80 85 90 95 100 105 110 115 120 125 130 140 145 150 155 160 180 190 200 210)
tivdfixe=(4 10 15 20 25 30 35 40 45 50 55 60 70 75 80 85 90 95 100 105 110 115 120 125 130 135 140 150 160)
tivdmob=(3 10 30 40 50 60 70 80 90 100 110 120 130 140 150 160)
tivrmob=(10 100 110 12 120 130 140 150 160 20 30 40 50 60 70 80 90)
tivdbfix=(30 60 70 80 85 90 95 100 110 120 130 140 145 150 155 160 170 180 190 200)

for tiv in ${tivdcfix[*]}
do
  nomref="REF SCH TIVD C FIX.svg"
  nomdest="SCH TIVD C FIX $tiv.svg"
  cp "$nomref" "$nomdest"
  sed s/ABCDE/$tiv/g -i "$nomdest"
  inkscape --with-gui --actions="select:texte; ObjectToPath; AlignHorizontalCenter; export-do; EditUndo; EditUndo; FileQuit" --export-plain-svg --export-overwrite "$nomdest"
done

#inkscape --with-gui --actions="select:texte; ObjectToPath; AlignHorizontalCenter; export-do; EditUndo; EditUndo; FileQuit" --export-plain-svg pouet.svg -o pouet2.svg
