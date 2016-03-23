# yum_package_hack

Set up system with `httpd` and `libXtxt` installed and
with a yum-cache.py that emits:

```
httpd 0 2.2.15 47.el6_7.2 x86_64 [] a sat-mirror
httpd 0 2.2.15 47.el6_7.1 x86_64 [] a sat-mirror
httpd 0 2.2.15 47.el6_7.3 x86_64 [] r sat-mirror
libXtst 0 1.2.1 2.el6 x86_64 [] a rhel6-x86_64-660
libXtst 0 1.2.2 2.1.el6 i686 [] a rhel6-x86_64-660
libXtst 0 1.0.99.2 3.el6 x86_64 [] a rhel6-x86_64-660
libXtst 0 1.2.1 2.el6 i686 [] a rhel6-x86_64-660
libXtst 0 1.0.99.2 3.el6 i686 [] a rhel6-x86_64-660
libXtst 0 1.2.2 2.1.el6 x86_64 [] r rhel6-x86_64-660
```



```
kitchen converge
kitchen login
```

Then:

```
sudo chef-apply -e "yum_package 'libXtst >= 1.0.99.2-3.el6'"
```

TODO: Enter the cookbook description here.


export KITCHEN_LOCAL_YAML=.kitchen.dokken.yml
eval $(docker-machine env default)
