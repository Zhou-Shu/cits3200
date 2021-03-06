# CITS3200: Online Competitions for AI bots

**Team Members:** *Shu Zhou, William Chesnutt, Aidan Haile, Xiaojing Chen, ~~Jianwei Li~~, Benjamin Nguyen*

Installation Instructions:
====

1. run "sudo apt-get -y update"
2. run "sudo apt-get -y install python3 python3-pip"
3. run the installation script "install.sh" to install our python dependencies
4. run "sudo dpkg -i mysql.deb"
5. run "sudo apt-get -y update" once more
6. install mysql by running "sudo apt-get install mysql-server", remember your root password
7. setup a mysql login path by running "mysql_config_editor set --login-path=local --host=localhost --user=root --password", inputting your root password as earlier
8. run the setupsql.sh script, giving it the arguments of the user and password of the MySQL user to be created for the service to use. Ignore the 'field list' error.
9. run these three commands in order: "python3 -m flask db init", "python3 -m flask db migrate -m "users table"", "python3 -m flask db updgrade"

***IMPORTANT NOTE***
If the program immediately runs into a segfault on startup, run this:
1. python3 -m pip uninstall mysql-connector-python
2. python3 -m pip download --no-deps --implementation py --only-binary=:all: mysql-connector-python
3. sudo python3 -m pip install ./mysql_connector_python-8.0.14-py2.py3-none-any.whl
4. The version numbers on the above step may vary, so tab completion is recommended.

Run Instructions
====

To run the REST api and the website, run the script WebServices.sh with bash
To run the game server, run `python3 Server_run.py`
