#
#
#
#



default['cookbooks_path'] = `cat ~/.chef/knife.rb | grep -i cookbook_path | sed "s/^[^/]*//;s/..[^']$//" | tr -d '\n'`



