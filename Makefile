all :	build
		sudo mkdir -p /home/adidion/data
		sudo mkdir -p /home/adidion/data/wordpress
		sudo mkdir -p /home/adidion/data/database
		sudo chmod 755 /etc/hosts
		sudo echo "127.0.0.1 adidion.42.fr" >> /etc/hosts
		sudo apt-get install -y mysql-server
		sudo docker-compose up -d
build :
	cd srcs && sudo docker-compose build
stop :
	docker-compose -f srcs/docker-compose.yml down -v
clean :
	docker-compose -f srcs/docker-compose.yml rm