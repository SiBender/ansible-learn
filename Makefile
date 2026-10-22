INVENTORY = ./inventory/inventory.ini
USER = root

.PHONY: ping-all uptime-by-ip

# Обычный запуск (выведет саму команду перед исполнением)
ping-all:
	ansible all -i $(INVENTORY) -u $(USER) -m ping
uptime-by-ip:
	ansible all -i '168.113.170.146, ' -u root -a 'uptime'