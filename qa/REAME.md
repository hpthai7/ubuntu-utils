# Hostname and DNS

```bash
user@pc-hostname:~$ sudo ls
sudo: unable to resolve host pc-hostname
```

Then ensure that `/etc/hosts` has the hostname configured:

```bsdh
user@pc-hostname:~$ cat /etc/hosts
127.0.0.1 localhost pc-hostname

# The following lines are desirable for IPv6 capable hosts
::1 ip6-localhost ip6-loopback
```

And `/etc/hostname` has the right hostname in it:

```bash
pc-hostname
```
