alias ll="ls -la"

mkcd() {
	mkdir $1;
	cd $1;
}

alias runtor="cd ~/Downloads/tor-browser_en-US/ && ./s* && cd"

lamp_stack_start() {
	if sudo service mysql start 2> /dev/null; then
		echo -e "\e[92mMySQL Service Active!"
	else
		echo -e "\e[31mError in starting MySQL Service!"
	fi
	if sudo service apache2 start 2> /dev/null; then
		echo -e "\e[92mApache2 Service Active!"
	else
		echo -e "\e[31mError in starting Apache2 Service!"
	fi
}

lamp_stack_restart() {
	if sudo service mysql restart 2> /dev/null; then
		echo -e "\e[92mMySQL Service Restarted!"
	else
		echo -e "\e[31mError in restarting MySQL Service!"
	fi
	if sudo service apache2 start 2> /dev/null; then
		echo -e "\e[92mApache2 Service Restarted!"
	else
		echo -e "\e[31mError in restarting Apache2 Service!"
	fi
}

alias apache_log="tail /var/log/apache2/error.log"

# NASM + LD  -  run assembly programs x86 arch
nasmld() {
    nasm -f elf "$1.asm"
    ld -m elf_i386 -o "exec_$1" "$1.o"
}
