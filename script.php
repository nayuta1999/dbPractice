<?php
declare(strict_types=1);

//user name list
$names = ['Jack', 'John', 'Smith', 'Noah', 'Harry', 
    'Sophia', 'Emma', 'Olivia', 'Ava', 'Isabella'];

//generate random body
function generateRandBody() : string {
    $result = '';
    $limit = rand(1, 100);
    for($i = 0; $i < $limit; $i++) {
        $result .= chr(mt_rand(65, 90));
    }
    return $result;
}

$limits = 10;
$count = 0;
for (; $count < $limits; $count+=1) {
     $user = $names[$count%10];
     $body = generateRandBody();
     $liked = rand(0, 1000000000);
     $retweet = rand(0, 1000000000);
     $include_reply = ($count%2 == 0) ? 0 : 1;

     $sql = "INSERT INTO tweets (`user`, `body`, `liked`, `retweet`, `include_reply`) value ('".$user."','".$body."',".$liked.",".$retweet.",".$include_reply.");";
     echo $sql . "\n";
        
}
