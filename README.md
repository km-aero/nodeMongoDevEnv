# Node App Development Environment 
This repository contains a Node application which is integrated with mongodb. To learn more about the app itself, please see the README.md file within the app folder.

## Prerequisites
To run this environment you will need the below (versions used included):
- Vagrant v2.2.7
- Git v2.24.1
- VirtualBox v6.1.4

## Dependencies
Before running the app you will need to install dependencies which will allow you to run the application. Steps are below:
1. Create the two virtual machines using Vagrant
```bash
vagrant up
```

2. Ssh into the application's virtual machine once the machines are running
```bash
vagrant ssh app
```
3. Navigate to the application's folder
```bash
cd app
```
4. Install application's dependencies (this step would have been completed automatically)
```bash
npm install
```

## How to Run
Steps are below:
1. Ssh into the applications virtual machine
```bash
vagrant ssh app
```
2. Navigate to the application's folder
```bash
cd app
```
3. Run the application
```bash
npm start
```

## Author
**Kevin Monteiro** - *DevOps Engineer* - [km-aero](https://github.com/km-aero)
