#! /bin/bash
echo "迁移开始，进入/var/www/html 目录"
cd /var/www/html
echo "删除 static_blog.zip"
rm -rf static_blog.zip
echo "压缩static-files目录到static_blog.zip"
zip -q -r static_blog.zip /var/www/html/static-files
echo "scp static_blog.zip 到云杉官网目录/var/www/blog/"
scp -i /root/.ssh/id_rsa -P 32200 /var/www/html/static_blog.zip  root@123.57.60.136:/var/www/blog/
echo "scp完成，进入yunshan官网解压更新静态blog"