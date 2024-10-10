#!/bin/bash
rm informe.pdf
archivos=("0-intro.md" "1-analisis.md" "2-vsftpd.md" "3-loginftp-samba.md" "4-openssh.md" "5-otros.md" "6-conclusiones.md")

top='<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Informe</title>
  <style>
    *{
    font-family: monospace;
}

pre{
    background-color: #ccc;
    padding: 20px;
    white-space: pre-wrap;
    word-wrap: break-word;
}
  </style>
</head>
<body>
'
bottom='
</body>
</html>
'
for archivo in ${archivos[@]}; do
    echo "Creando $archivo"
    pandoc $archivo -o ${archivo%.md}.html
    ##add top and bottom
    cat ${archivo%.md}.html > tmp.html
    echo $top > ${archivo%.md}.html
    cat tmp.html >> ${archivo%.md}.html
    echo $bottom >> ${archivo%.md}.html
    rm tmp.html
    echo "Listo"
    #convert html to pdf using css
    wkhtmltopdf ${archivo%.md}.html ${archivo%.md}.pdf
done

pdftk *.pdf cat output informe.pdf

for archivo in ${archivos[@]}; do
    #rm ${archivo%.md}.html
    rm ${archivo%.md}.pdf
done
