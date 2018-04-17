startIdx=${1}
endIdx=${2}
folderPath=${3}

i=$startIdx

mkdir -p $folderPath

while [ $i -le $endIdx ]; do
    path=${folderPath}/${i}.pdf
    echo ${path}
    curl -o ${path} "https://babel.hathitrust.org/cgi/imgsrv/download/pdf?id=mdp.39015046801760;orient=0;size=100;seq=${i};attachment=0"
    let i=i+1
done
