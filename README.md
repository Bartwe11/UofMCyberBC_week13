# UofMCyberBC_week13
Week 13 Homework Repository
## Automated ELK Stack Deployment

The files in this repository were used to configure the network depicted below.

 ![Elk_stack_diagram](https://user-images.githubusercontent.com/86496780/136319012-bb6d4d76-f4af-4763-b949-a4a22d2f691f.png)

These files have been tested and used to generate a live ELK deployment on Azure. They can be used to either recreate the entire deployment pictured above. Alternatively, select portions of the playbook file may be used to install only certain pieces of it, such as Filebeat.

  - ELK.yml

This document contains the following details:
- Description of the Topologu
- Access Policies
- ELK Configuration
  - Beats in Use
  - Machines Being Monitored
- How to Use the Ansible Build


### Description of the Topology

The main purpose of this network is to expose a load-balanced and monitored instance of DVWA, the D*mn Vulnerable Web Application.

Load balancing ensures that the application will be highly available, in addition to restricting access to the network.
- The Load balancer will help against DDos attacks by distributing the traffic to multiple servers.  Using a jump box creates a single entry point from the internet to the other machines, only allowing access to the machines from specific IP addresses. 

Integrating an ELK server allows users to easily monitor the vulnerable VMs for changes to the log files and system performance.
- Filebeat watches user specified log file or locations.
- Metricbeat collects machine metrics. Most common is CPU usage and Uptime.

The configuration details of each machine may be found below.


|    Name    	| Function  	| IP Address 	| Operating System 	|
|:----------:	|-----------	|------------	|------------------	|
|  Jump Box  	|  Gateway  	| 10.0.0.7   	|       Linux      	|
|    Web-1   	|     VM    	| 10.0.0.10  	|       Linux      	|
|    Web-2   	|     VM    	| 10.0.0.9   	|       Linux      	|
| ELK-SERVER 	| ELK stack 	| 10.1.0.4   	|       Linux      	|

### Access Policies

The machines on the internal network are not exposed to the public Internet. 

Only the jump box machine can accept connections from the Internet. Access to this machine is only allowed from the following IP addresses:
- 174.141.205.148

Machines within the network can only be accessed by the jump box.
- 10.0.0.7 

A summary of the access policies in place can be found in the table below.

| Name     | Publicly Accessible | Allowed IP Addresses |
|----------|---------------------|----------------------|
| Jump Box | No                  | 174.141.205.148      |
|  Web-1   | NO                  | 10.0.0.7             |
|  Web-2   | NO                  | 10.0.0.7             |
|   ELK    | NO                  | 10.0.07              |

### Elk Configuration

Ansible was used to automate configuration of the ELK machine. No configuration was performed manually, which is advantageous because...
- Multiple applications can be deployed with a single tap, with less chance of human error.

The playbook implements the following tasks:
- Intall Docker.io
- Install Python3-pip
- Install Docker Python module
- Download and launch an ELK container

The following screenshot displays the result of running `docker ps` after successfully configuring the ELK instance.

![ELKDOCKERPSscreen](https://user-images.githubusercontent.com/86496780/136320349-cc2a5792-5a70-4cbc-ac63-5a879bd6dc3d.png)

### Target Machines & Beats
This ELK server is configured to monitor the following machines:
- 10.0.0.10
- 10.0.0.9

We have installed the following Beats on these machines:
- Filebeat
- Metricbeat

These Beats allow us to collect the following information from each machine:
- Filebeat watches user specified log file or locations. It will forward log events to Elasticsearch or Logstash.
- Metricbeat collects metrics from the OS and other services running. It then ships results you specify to Elastic Search or Logstash

### Using the Playbook
In order to use the playbook, you will need to have an Ansible control node already configured. Assuming you have such a control node provisioned: 

SSH into the control node and follow the steps below:
- Copy the filebeat-playbook.yml and metricbeat-playbook.yml files to /etc/ansible/roles.
- Update the filebeat-config.yml and metricbeat-config.yml files to include the IP address of the ELK machine.
- Run the playbook, and navigate to  http://104.43.204.66:5601/app/kibana to check that the installation worked as expected.
