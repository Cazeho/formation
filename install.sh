# docker

curl -s https://raw.githubusercontent.com/Cazeho/download_project/main/docker_ubuntu.sh | bash

# learnhouse (course)
cd /opt
git clone https://github.com/learnhouse/learnhouse 
cd learnhouse
docker-compose up -d
# https://docs.learnhouse.app/self-hosting/hosting-guide
# user/password in logs docker-compose logs -f

# CTFD

cd /opt
git clone https://github.com/CTFd/CTFd.git
cd CTFd
# https://docs.ctfd.io/docs/deployment/installation/
docker-compose up -d

# Apache guacamole (access to remote labs)


version: "3"
services:
   guacamole:
      image: abesnier/guacamole
      container_name: guacamole
      volumes:
        - postgres:/config
      ports:
        - 8443:8080

volumes:
  postgres:
     driver: local
