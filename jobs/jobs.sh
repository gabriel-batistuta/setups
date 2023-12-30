# https://www.vivaolinux.com.br/topico/Comandos/Como-executar-programa-em-python-ao-iniciar-linux-mint

cd

echo "
0 8 * * * /usr/bin/python3.10 /home/gabriel/Documents/programming/Feed_UERN_Render/main.py
0 12 * * * /usr/bin/python3.10 /home/gabriel/Documents/programming/Feed_UERN_Render/main.py
0 16 * * * /usr/bin/python3.10 /home/gabriel/Documents/programming/Feed_UERN_Render/main.py
0 20 * * * /usr/bin/python3.10 /home/gabriel/Documents/programming/Feed_UERN_Render/main.py
" >> /etc/crontab
