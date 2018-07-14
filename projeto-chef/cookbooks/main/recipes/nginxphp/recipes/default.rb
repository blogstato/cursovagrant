node.default["web"]["packages"] = ["nginx","php5-fpm","php5-cli","php5-curl"]
node.default["nginx"]["doc_root"] = "/vagrant/web"
node.default["nginx"]["server_name"] = "webserver"


node["web"]["packages"].each do |p|
        apt_package p do
                action  :install
        end
end

service "nginx" do
        action [ :enable, :start ]
end

service "php5-fpm" do
        action [ :enable, :start ]
end

template "/etc/nginx/sites-available/default" do
	source "vhost.erb"
	variables ({
		:doc_root	=> node["nginx"]["doc_root"],
		:server_name	=> node["nginx"]["server_name"]
	})
	action :create
	notifies  :restart, resources(:service => "nginx")
end
