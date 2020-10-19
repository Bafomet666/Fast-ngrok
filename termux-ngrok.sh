#!/bin/dash
# bafomet
atualizar='\033[1;32m'
echo "$atualizar Обновление репозитория..."
apt update && upgrade -y
apt install -y wget
clear
k='\033[01;32m'
echo
echo "${k} Подписыаемся https://t.me/hacknocrime";
echo " Вы хотите установить Ngrok? [Y/n]"
read opcao
case $opcao in
y)
echo
echo " Скачивание Fast-ngrok ..."
case `dpkg --print-architecture` in
aarch64)
    architectureURL="arm64" ;;
arm)
    architectureURL="arm" ;;
armhf)
    architectureURL="armhf" ;;
amd64)
    architectureURL="amd64" ;;
i*86)
    architectureURL="i386" ;;
x86_64)
    architectureURL="amd64" ;;
*)
    echo " Неизвестная архитектура "
esac

wget "https://github.com/Bafomet666/ngrok.dops/blob/main/ngrok-stable-linux-${architectureURL}.zip?raw=true" -O ngrok.zip
unzip ngrok.zip
cat ngrok > /data/data/com.termux/files/usr/bin/ngrok
chmod 700 /data/data/com.termux/files/usr/bin/ngrok
rm ngrok ngrok.zip
clear
echo "${k}███╗   ██╗ ██████╗ ██████╗  ██████╗ ██╗  ██╗";
echo "${k}████╗  ██║██╔════╝ ██╔══██╗██╔═══██╗██║ ██╔╝";
echo "${k}██╔██╗ ██║██║  ███╗██████╔╝██║   ██║█████╔╝ ";
echo "${k}██║╚██╗██║██║   ██║██╔══██╗██║   ██║██╔═██╗ ";
echo "${k}██║ ╚████║╚██████╔╝██║  ██║╚██████╔╝██║  ██╗";
echo "${k}╚═╝  ╚═══╝ ╚═════╝ ╚═╝  ╚═╝ ╚═════╝ ╚═╝  ╚═╝";
echo "${r}                             by Bafomet 2020";
echo "Пример команды | ngrok http 8080)"
;;

n)
clear
echo "Ngrok не установлен :("
echo
esac



