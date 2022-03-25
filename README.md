# **HOME-WORK-03 - CLOUD-TESTAPP**

- Создаем ВМ через YANDEX CLOUD CLI.
Команда для создания следующая:
```
$ yc compute instance create \
--name reddit-app \
--hostname reddit-app \
--memory=4 \
--create-boot-disk image-folder-id=standard-images,image-family=ubuntu-1604-lts,size=10GB \
--network-interface subnet-name=default-ru-central1-a,nat-ip-version=ipv4 \
--metadata serial-port-enable=1 \
--ssh-key ~/.ssh/appuser.pub
```

---
- Пишем скрипты установки необходимого софта - `install_ruby.sh`,`install_mongodb.sh`,`deploy.sh`

---
- Проверяем доступность поссылке: [http://51.250.68.137:9292](http://51.250.68.137:9292)

---
- Данные для подключения:
```
bastion_IP = 51.250.64.135
someinternalhost_IP = 10.128.0.17
testapp_IP = 51.250.68.137
testapp_port = 9292
```
