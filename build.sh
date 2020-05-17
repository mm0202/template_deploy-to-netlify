stage=$1

mkdir -p public
cp src/index.html public/index.html
sed -i "s/{stage}/$stage/g" public/index.html
sed -i "s/{date}/$(date)/g" public/index.html
