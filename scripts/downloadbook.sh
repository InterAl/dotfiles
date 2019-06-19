startIdx=${1}
endIdx=${2}
folderPath=${3}

i=$startIdx

mkdir -p $folderPath

while [ $i -le $endIdx ]; do
    path=${folderPath}/${i}.gif
    echo ${path}
    curl -o ${path} "http://www.takelifeback.com/moltz/${i}.gif"
    let i=i+1
done
