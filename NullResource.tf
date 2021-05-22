resource "null_resource" "cluster" {
    connection {
    type     = "ssh"
    user     = "ec2-user"
    private_key  = file( "/home/ansadmin/ws/sai.pem" )
    host     = aws_instance.os1.public_ip
  }
    provisioner "local-exec" {
    command = "echo  ${aws_instance.os1.public_ip} > hosts"
  }
# provisioner "remote-exec" {
 #    inline = [
  #    "sudo mkdir /hello",
   #   "sudo mkfs.ext4 /dev/xvdb",
    #  "sudo mount /dev/xvda2 /var/www/html",
     # "sudo yum install python3",
      #"alternatives --set python /usr/bin/python3"
    #]

  #}

 provisioner "local-exec" {
    command = "ansible-playbook  playbook1.yml"
  }
 provisioner "local-exec" {
    command = "ansible-playbook  playbook2.yml"
  }


}

