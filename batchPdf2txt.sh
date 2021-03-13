PDF_FILES=inputs/PCRs/*.PDF
for f in $PDF_FILES
do
  echo "Processing $f file..."
  newfile=$(echo $f | cut -d'.' -f 1 | cut -d'/' -f 3)
  echo ${newfile}.txt
  pdf2txt.py $f >> outputs/pdf2txt/${newfile}.txt
done
