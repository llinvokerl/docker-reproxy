<?php
$redis = new \Redis();
$redis->connect("lemp_redis", 6379);//只写redis_instance会优先选择当前docker-compse的那个redis
//$redis->connect("127.0.0.1", 6379);
$result = $redis->incr("testx", 1);
//$result = $redis->info();
var_dump($result);
