COMMAND=docker-compose

PHONY += up
up:
	$(COMMAND) up

PHONY += down
down:
	$(COMMAND) down

PHONY += chown-src
chown-src:
	sudo chown $(shell id -u):$(shell id -g) -R ./

PHONY += clean
clean:
	echo "Cleaning"

.PHONY: $(PHONY)
