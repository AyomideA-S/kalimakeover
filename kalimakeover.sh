#!/bin/bash
echo "Please run as root or else the program might not run as is intended."

echo 'Select the features you wish to install:'
OPTIONS="All Pip OpenSSL Update-Python Python2 Python3 Upgrade Quit"
select opt in $OPTIONS; do
	if [ "$opt" = "All" ]; then
		sudo apt install -y python3-pip
		sudo /usr/bin/python3.9 -m pip install --upgrade pip
		
		sudo apt-get update
		sudo apt-get install openssl
		
		sudo apt-get install software-properties-common
		sudo add-apt-repository ppa:deadsnakes/ppa
		sudo apt-get update
		sudo apt-get install python3.9
		
		sudo apt-get update
		sudo apt-get install idle
		
		python3 -V
		
		sudo apt-get update
		sudo apt-get install idle
		sudo apt list --upgradeable
		sudo apt update && apt upgrade
		sudo apt clean
		sudo apt update
		sudo apt full-upgrade
		sudo shutdown -r now
		
	elif [ "$opt" = "Pip" ]; then
		sudo apt install -y python3-pip
		sudo /usr/bin/python3.9 -m pip install --upgrade pip
		
	elif [ "$opt" = "OpenSSL" ]; then
		sudo apt-get update
		sudo apt-get install openssl
		
	elif [ "$opt" = "Update-Python" ]; then
		sudo apt-get install software-properties-common
		sudo add-apt-repository ppa:deadsnakes/ppa
		sudo apt-get update
		sudo apt-get install python3.9
		
		sudo apt-get update
		sudo apt-get install idle
		
		python3 -V
		
	elif [ "$opt" = "Python2" ]; then
		python --version
		ls /usr/bin/python
		update-alternatives --install /usr/bin/python python /usr/bin/python2.7 2
		update-alternatives --install /usr/bin/python python /usr/bin/python3.9 1
		update-alternatives --config python
		python -V
		
	elif [ "$opt" = "Python3" ]; then
		python --version
		ls /usr/bin/python
		update-alternatives --install /usr/bin/python python /usr/bin/python2.7 1
		update-alternatives --install /usr/bin/python python /usr/bin/python3.9 2
		update-alternatives --config python
		python -V
		
	elif [ "$opt" = "Upgrade" ]; then
		sudo apt list --upgradeable
		sudo apt update && apt upgrade
		sudo apt clean
		sudo apt update
		sudo apt full-upgrade
		sudo shutdown -r now
		
	elif [ "$opt" = "Quit" ]; then
		exit
	else
		echo 'Bad option!'
	fi
done
