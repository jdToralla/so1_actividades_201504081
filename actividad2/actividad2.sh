export GITHUB_USER="jd-toralla" && \
curl https://api.github.com/users/$GITHUB_USER > data_github && \


if [ -d /tmp/$(date +%d-%m-%Y) ]; then rm -Rf /tmp/$(date +%d-%m-%Y); fi && \
mkdir /tmp/$(date +%d-%m-%Y) && \

echo "Hola `grep -oP '"login":\K"?[^,}]+' data_github`. User ID: `grep -oP '"id":\K"?[^,}]+' data_github`. Cuenta fue creada el: `grep -oP '"created_at":\K"?[^,}]+' data_github`." && 
echo "Hola `grep -oP '"login":\K"?[^,}]+' data_github`. User ID: `grep -oP '"id":\K"?[^,}]+' data_github`. Cuenta fue creada el: `grep -oP '"created_at":\K"?[^,}]+' data_github`." > /tmp/$(date +%d-%m-%Y)/saludos.log