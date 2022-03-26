# **HOME-WORK-05 - PACKER-BASE**

- Создаем шаблон `ubuntu16.json`.
- Создаем файл переменных `variables.json.exmaple`, добавляя в него дополнительные параметры - количество CPU, размер RAM, размер HDD и другие.
- Так как Packer выдавал ошибку при установке пакетов, то изменяем следующие параметры в скриптах `install_ruby.sh` и `install_mongodb.sh`:
`apt update` на `apt-get update`
`apt install` на `apt-get install`
Вставляем следующие команды сразу после `apt-get update`:
```
sudo rm /var/lib/apt/lists/lock
sudo rm /var/cache/apt/archives/lock
sudo rm /var/lib/dpkg/lock
sudo rm /var/lib/dpkg/lock-frontend
```

---
- Проверяем корректность `*.json`:
```
alkolexx@NOTE:~$ packer validate -var-file=variables.json.example ./ubuntu16.json
The configuration is valid.
```
- Запускаем сборку:
```
alkolexx@NOTE:~$ packer build -var-file=variables.json.example ./ubuntu16.json
yandex: output will be in this color.

==> yandex: Creating temporary RSA SSH key for instance...
==> yandex: Using as source image: fd8b6brrvf4ovk98vkdf (name: "ubuntu-16-04-lts-v20220314", family: "ubuntu-1604-lts")
==> yandex: Creating network...
==> yandex: Creating subnet in zone "ru-central1-a"...
==> yandex: Creating disk...
==> yandex: Creating instance...
....
==> yandex: Stopping instance...
==> yandex: Deleting instance...
    yandex: Instance has been deleted!
==> yandex: Creating image: reddit-base-1648307000
==> yandex: Waiting for image to complete...
==> yandex: Success image create...
==> yandex: Destroying subnet...
    yandex: Subnet has been deleted!
==> yandex: Destroying network...
    yandex: Network has been deleted!
==> yandex: Destroying boot disk...
    yandex: Disk has been deleted!
Build 'yandex' finished after 3 minutes 39 seconds.

==> Wait completed after 3 minutes 39 seconds

==> Builds finished. The artifacts of successful builds are:
--> yandex: A disk image was created: reddit-base-1648307000 (id: kdy69li3167j344pej9a) with family name reddit-base
```
- Образ успешно создан. Найти его можно в `YC - Compute Cloud - Образы`
- Создаем ВМ из полученного образа `Compute Clou - Создать ВМ - Выбор образа/загрузочного диска - Пользовательские - Выбрать - Образ - Применить`
- Следуем инструкции, разворачиваем REDDIT и проверяем доступной по внешнему адресу.