DNS server
* Test on Linux:
```bash
host test.domain.com xx.xx.xx.xx
// xx.xx.xx.xx is DNS server's IP address.
```

* Test on windows:
```bash
nslookup test.domain.com xx.xx.xx.xx
// xx.xx.xx.xx is DNS server's IP address.

```

* It seems ok if your terminal return like this:
```bash
Server:  UnKnown
Address:  xx.xx.xx.xx

Name:    test.domain.com
Address:  1.2.3.4

```

HOSTS
* You can update hosts from [this repo](https://github.com/racaljk/hosts).
* OR, you can try this > [老D博客](http://laod.cn/hosts/2015-google-hosts.html).
* OR, you can try this > [手机发烧友](http://htcui.com/4938.html).
* OR, you can TIY hosts > [DNS-Finder](https://github.com/zhoukekestar/DNS-Finder)