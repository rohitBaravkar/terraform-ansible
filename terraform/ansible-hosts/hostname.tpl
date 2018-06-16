all:
  hosts:
    remote:
      ansible_connection: ssh
      ansible_ssh_user: ubuntu 
      ansible_host: ${ip}
      ansible_port: 22
      ansible_ssh_private_key_file=~/.ssh/server1.pem
