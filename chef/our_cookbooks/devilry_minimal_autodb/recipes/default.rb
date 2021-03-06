#
# Cookbook Name:: devilrydemo
# Recipe:: default
#

username = "#{node.devilryprodenv.username}"
devilrybuild_dir = "#{node.devilryprodenv.devilrybuild_dir}"


bash "devilry_dev_autodb_minimal" do
  user "#{username}"
  cwd "#{devilrybuild_dir}"
  code <<-EOH
  bin/django.py dev_autodb --no-groups > /tmp/devilrydemo-dev_autodb.log
  EOH
end
