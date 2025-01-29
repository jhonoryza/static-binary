wget https://nginx.org/download/nginx-1.26.0.tar.gz
tar -xvzf nginx-1.26.0.tar.gz
cd nginx-1.26.0

# Konfigurasi ulang dengan FastCGI
./configure --prefix=/usr/local/nginx \
            --with-http_ssl_module \
            --with-http_v2_module \
            --with-http_realip_module \
            --with-http_gzip_static_module \
            --with-http_stub_status_module \
            --with-pcre \
            --with-stream \
            --with-stream_ssl_module

# Jalankan make dan install
make

cp objs/nginx ../
