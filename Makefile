SHELL := /bin/bash

.PHONY: init start systemd

init:
	bash init.sh

start:
	bash start.sh

stop:
	bash stop.sh