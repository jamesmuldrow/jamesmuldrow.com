SITE_NAME = mysite

build:
	docker build -t muldrowja/nginx .
	$(MAKE) run

run:
	docker run --volume=/Users/James/Projects/jamesmuldrow.com/html:/app/html --name $(SITE_NAME) -d -p 8080:80 -p 8081:8081 muldrowja/nginx

rebuild:
	docker stop $(SITE_NAME)
	docker rm $(SITE_NAME)
	docker build -t muldrowja/nginx .
	$(MAKE) run

ps:
	docker ps -a

bash:
	docker exec -it mysite bash
