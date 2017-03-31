用不同的方式实现抢票功能，比较他们之间的优劣
测试方式
apache ab 进行并发测试
ab -r -n 80 -c 80  http://localhost/test.php