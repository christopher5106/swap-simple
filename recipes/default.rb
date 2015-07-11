bash "install-swap" do
  user "root"
  cwd "/var"
  code <<-EOH
	cd /var
	touch swap.img
	chmod 600 swap.img
	dd if=/dev/zero of=/var/swap.img bs=#{node[:swap][:size]} count=1000
	mkswap /var/swap.img
	swapon /var/swap.img
  EOH
end
