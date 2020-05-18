stage=$1

# 公開用ディレクトリを作成
mkdir -p public

# ページテンプレートを公開ディレクトリへコピー
cp src/index.html public/index.html

# 公開ページの調整
sed -i "s/{stage}/$stage/g" public/index.html
sed -i "s/{date}/$(date)/g" public/index.html
