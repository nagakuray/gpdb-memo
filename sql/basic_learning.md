#### データベースの一覧表示
```
mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| information_schema |
| my_sample          |
+--------------------+
2 rows in set (0.00 sec)
```

#### テーブル一覧の表示
```
mysql> show tables from my_sample;
+---------------------+
| Tables_in_my_sample |
+---------------------+
| tbl_exam            |
| tbl_std             |
+---------------------+
```

#### テーブルスキーマの確認
'''
mysql> show columns from tbl_exam;
+-------+-------------+------+-----+---------+-------+
| Field | Type        | Null | Key | Default | Extra |
+-------+-------------+------+-----+---------+-------+
| id    | char(5)     | NO   | PRI |         |       |
| eng   | int(11)     | YES  |     | NULL    |       |
| math  | int(11)     | YES  |     | NULL    |       |
| memo  | varchar(50) | YES  |     | nothing |       |
+-------+-------------+-----
'''

#### create tableのDDL確認
'''
mysql> show create table tbl_exam;
'''

#### HAVING句でサブクエリを利用
グループ化されたものを更に検索する場合には、HAVING句でないと出来ない。
'''
mysql> select eng ,count(eng) from tbl_exam group by eng having eng >75;
+------+------------+
| eng  | count(eng) |
+------+------------+
|   80 |          1 |
|   90 |          1 |
+------+------------+
'''

