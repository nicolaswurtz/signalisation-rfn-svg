#!/bin/sh
tivdcfix=(30 40 50 55 60 70 75 80 85 90 95 100 105 110 115 120 125 130 140 145 150 155 160 180 190 200 210)
tivdcfix2=("100 120" "110 120" "110 130" "120 125" "120 130" "130 120" "130 140" "130 150" "140 160" "60 50")
tivdfixe=(4 10 15 20 25 30 35 40 45 50 55 60 70 75 80 85 90 95 100 105 110 115 120 125 130 135 140 150 160)
tivdfixe2=("15 35" "20 35" "30 35" "30 40" "40 60" "50 60" "50 30" "50 60" "50 70" "60 40" "60 50" "60 70" "70 50" "70 60" "70 80" "80 70")
tivdmob=(3 10 30 40 50 60 70 80 90 100 110 120 130 140 150 160)
tivrmob=(10 100 110 12 120 130 140 150 160 20 30 40 50 60 70 80 90)
tivdbfix=(30 60 70 80 85 90 95 100 110 120 130 140 145 150 155 160 170 180 190 200)
tivdbfix2=("100 110" "140 150" "145 155" "150 155")
tivpen=(1 2 3 4 5 6 7 8 9)

# SIMPLE VALUES
#for tiv in ${tivdcfix2[*]}
#do
#  nomref="REF SCH TIV PENEXE.svg"
#  nomdest="SCH TIV PENEXE $tiv.svg"
#  cp "$nomref" temp.svg
#  sed s/ABCDE/$tiv/g -i temp.svg
#  inkscape --with-gui --export-type="svg" --actions="select:texte; ObjectToPath; AlignHorizontalCenter; export-do; EditUndo; EditUndo; FileQuit" --export-plain-svg temp.svg -o "$nomdest"
#  rm temp.svg
#done

# DOUBLE VALUES
for i in ${!tivdfixe2[*]}
do
  tiv=${tivdfixe2[$i]}
  IFS=" "; tivARR=($tiv);
  nomref="REF2 SCH TIV D FIXE.svg"
  nomdest="SCH TIV D FIXE $tiv.svg"
  echo ${tivARR[0]} ${tivARR[1]}
  echo 
  cp "$nomref" temp.svg
  sed s/ABCDE/${tivARR[0]}/g -i temp.svg
  sed s/FGHIJ/${tivARR[1]}/g -i temp.svg
  inkscape --with-gui --export-type="svg" --actions="select:texte; ObjectToPath; AlignHorizontalCenter; export-do; EditUndo; EditUndo; FileQuit" --export-plain-svg temp.svg -o "$nomdest"
  rm temp.svg
done

#inkscape --with-gui --actions="select:texte; ObjectToPath; AlignHorizontalCenter; export-do; EditUndo; EditUndo; FileQuit" --export-plain-svg pouet.svg -o pouet2.svg
