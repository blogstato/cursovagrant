node.default["system"]["packages"] = ["vim","git","curl"]

execute "apt-get update" do
	command "apt-get update"
end

node["system"]["packages"].each do |p|
	apt_package p do
		action	:install
	end
end

include_recipe "nginxphp"




