echo navegador padrão: $(xdg-settings get default-web-browser)
echo "faça o login no github"

# abre o site do github pra fazer login
xdg-open https://github.com/login | x-www-browser https://github.com/login