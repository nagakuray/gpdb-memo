#### すでにmysqlに何かある確認する。
```
$ sudo yum list installed | grep mysql
```
存在した場合は消す。
```
$ sudo yum erace mysql-libs
```

#### RPMの入手
[http://downloads.mysql.com/archives/community/ ](http://downloads.mysql.com/archives/community/)
```
$ wget http://downloads.mysql.com/archives/get/file/MySQL-client-5.6.20-1.linux_glibc2.5.x86_64.rpm
$ wget http://downloads.mysql.com/archives/get/file/MySQL-server-5.6.20-1.linux_glibc2.5.x86_64.rpm
$ wget http://downloads.mysql.com/archives/get/file/MySQL-shared-compat-5.6.20-1.linux_glibc2.5.x86_64.rpm
$ wget http://downloads.mysql.com/archives/get/file/MySQL-devel-5.6.20-1.linux_glibc2.5.x86_64.rpm
```

#### インストール
```
$ sudo yum install MySQL-client-5.6.20-1.linux_glibc2.5.x86_64.rpm
$ sudo yum install MySQL-server-5.6.20-1.linux_glibc2.5.x86_64.rpm
$ sudo yum install MySQL-shared-compat-5.6.20-1.linux_glibc2.5.x86_64.rpm
$ sudo yum install MySQL-devel-5.6.20-1.linux_glibc2.5.x86_64.rpm
```

#### インストール確認
```
$ mysql --version
```

#### 設定ファイル作成
```
$ sudo vim /etc/my.cnf
```
以下の内容を設定する。  
```
[mysqld]
datadir=/var/lib/mysql
socket=/var/lib/mysql/mysql.sock
user=mysql
# Disabling symbolic-links is recommended to prevent assorted security risks
symbolic-links=0
character-set-server = utf8
```

#### MySQL起動
```
$ sudo service mysql start
```

#### root初期パスワード確認
```
$ cat /root/.mysql_secret
```

#### MySQL初期設定
```
$ sudo mysql_secure_installation
```

#### MySQLログイン
```
$ sudo mysql -u root -p
```

#### データベース作成
- rootユーザでMySQLにログイン
```
$ mysql -u root -p
```
- rootユーザのパスワード設定
```
mysql> SET PASSWORD FOR root@localhost=PASSWORD('{new password}');
```


