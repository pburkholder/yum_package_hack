# yum_package_hack

This cookbook recreates the issue reported in https://getchef.zendesk.com/agent/tickets/8421:
- a system has libXtxt installed as `1.2.2-2.1.el6 x86_64`
- the customer uses an internal package repository
- for whatever reason, the output from `yum-dump.py` is not sorted newest to oldest
- a cookbook uses `yum_package 'libXtst >= 1.0.99.2-3.el6'`
- when the above runs, and the `yum-dump.py` output is ordered as below then the chef-client fails.

```
libXtst 0 1.2.1 2.el6 x86_64 [] a rhel6-x86_64-660
libXtst 0 1.2.2 2.1.el6 i686 [] a rhel6-x86_64-660
libXtst 0 1.0.99.2 3.el6 x86_64 [] a rhel6-x86_64-660
libXtst 0 1.2.1 2.el6 i686 [] a rhel6-x86_64-660
libXtst 0 1.0.99.2 3.el6 i686 [] a rhel6-x86_64-660
libXtst 0 1.2.2 2.1.el6 x86_64 [] r rhel6-x86_64-660
```

## To recreate

```
kitchen converge
kitchen login
```

Then:

```
sudo chef-apply -e "yum_package 'libXtst >= 1.0.99.2-3.el6'"
```

## Possible resolutions:

- Update `yum-dump.py` to return correctly sorted packages
- Update the yum_package provider to sort the package list returned by `yum-dump`
