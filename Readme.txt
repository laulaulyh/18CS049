18CS049
AI Bot in Facebook for Smart Learning
LAU Yan Hang
54412024

-----------------------------------------------------------------------------------------------------------------------

This folder contains 4 files:

arcalaucsc.js : source code of game

mssql_api.js : source code of API

database.sql : script of the database

Readme.txt

-----------------------------------------------------------------------------------------------------------------------

How to play CS Challenge in Nemo Bot:

1. Go to Facebook Page of Nemo Bot (https://www.facebook.com/Nemo-Bot-454163798317367/)
2. Start conversation to Nemo Bot using Messenger
3. Click Menu -> Games -> Student Projects
4. Select CS Challenge

-----------------------------------------------------------------------------------------------------------------------

Reminder:

Note that the configurations in the scripts only works on my own server,
you need to change the configurations if you want to run them on your server.

-----------------------------------------------------------------------------------------------------------------------

How to reproduce the database on your own server

1. Install Microsoft SQL Server 2017 Express
2. Install Microsoft SQL Server Management Studio 7
3. Run the script [database.sql]

-----------------------------------------------------------------------------------------------------------------------

How to reproduce the API on your own server

1. Install Node.js
2. Please use CMD to install the libraries,type the following commands in cmd after the installation of Node.js:
	I. npm install express
	II. npm install mssql
3. Open[mssql_api.js], replace the config to with the setting of your own database
4. To run the API, type[node mssql_api.js] in cmd

-----------------------------------------------------------------------------------------------------------------------

How to reproduce the game with your own server

1. Replace the URL in UploadData() with your server address
2. Change the information in module.exports to avoid conflicted name
3. Submit to Nemo Bot via GamePlatform

-----------------------------------------------------------------------------------------------------------------------
Network Setting:

1. Go to the router setting
2. Enable the port you are going to use for API. By default, it is 5050

-----------------------------------------------------------------------------------------------------------------------


