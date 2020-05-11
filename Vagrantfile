Vagrant.configure("2") do |config|
  config.vm.provision "shell", path: "provision.sh"

  # Bionic is LTS until 2023
  # https://wiki.ubuntu.com/Releases
  config.vm.define "server" do |server|
    server.vm.box = "ubuntu/bionic64"
  end

  # config.vm.define "client" do |client|
  #   db.vm.box = "ubuntu/bionic64"
  # end
end