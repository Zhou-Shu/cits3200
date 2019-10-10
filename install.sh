#download and install the mysql server
wget https://dev.mysql.com/get/mysql-apt-config_0.8.13-1_all.deb 
sudo dpkg -i mysql-apt-config_0.8.13-1_all.deb 
sudo apt-get update 
sudo apt install mysql-server 
#install python3 and utilities
sudo apt install python3 
sudo apt install python3-venv python3-pip 
#create a virtual environment for all our dependencies
python3 -m venv venv 
#installing all the dependencies for the web front end
python3 -m pip install flask, python-dotenv,flask-wtf,flask-sqlalchemy,cryptography,pymsql,flask-migrate,flask-login,flask_uploads 
python3 -m pip install mysql-connector-python #install the mysql connector connman uses 