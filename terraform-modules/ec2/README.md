### EC2 module

### Inputs
* ami (optional) : AMI ID is optional. Default ami is ami-09c813fb71547fc4f which is rhel-9 
* instance_type (Optional): default value is t3.micro
* tags (optioanl) : default value is empty

### Outputs

* public ip: public ip of the instance
* private ip: private ip of the instance
* id: id of the instance