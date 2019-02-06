CREATE TABLE tweets (
    uid int primary key auto_increment,
    user varchar(255) not null,
    body varchar(255) not null,
    liked int default 0,
    retweet int default 0,
    include_reply boolean default false,
    created_at datetime default current_timestamp
);
INSERT INTO tweets (`user`, `body`, `liked`, `retweet`, `include_reply`) value ('Jack','CSHMFFHXYIAY',101262607,788244618,0);
INSERT INTO tweets (`user`, `body`, `liked`, `retweet`, `include_reply`) value ('John','BNYPLLSXIFXZQWZSYISTIVUDXICZZJDDTTBHUO',455425608,660218612,1);
INSERT INTO tweets (`user`, `body`, `liked`, `retweet`, `include_reply`) value ('Smith','ZVMAHSWKBYYVNDJYVCIINSTYUELEUNVDJKETJGZIAITPJJSCEPLFRTDJFDVMYKVG',155967009,720719955,0);
INSERT INTO tweets (`user`, `body`, `liked`, `retweet`, `include_reply`) value ('Noah','KIDUVZVHTQEIEHJAWRFOTXMERFASBVFNPHSSTSEMAUDPVRGHCSOJFMQHRLEFGAYPOQPKYBKBHEOXOFUERGOK',717252756,32221742,1);
INSERT INTO tweets (`user`, `body`, `liked`, `retweet`, `include_reply`) value ('Harry','NEZXVIAVARL',361169251,640449508,0);
INSERT INTO tweets (`user`, `body`, `liked`, `retweet`, `include_reply`) value ('Sophia','NBPOFOVUXPFYWGTLKIYFUUOPUGJMVWKENTEKJDKAKJLDHMFEHSYSXOLWCKLWJ',587239726,530171748,1);
INSERT INTO tweets (`user`, `body`, `liked`, `retweet`, `include_reply`) value ('Emma','IIHSNNHUQIPPXLNHEKLSLN',334524943,69008302,0);
INSERT INTO tweets (`user`, `body`, `liked`, `retweet`, `include_reply`) value ('Olivia','BHLZISBQELBLJVFZBTHBJUKAHILWJXKRHLAPYBMHXBPTSPFGVFGGLXTAEKUHMHAFHYAWQKYZ',779212237,102552681,1);
INSERT INTO tweets (`user`, `body`, `liked`, `retweet`, `include_reply`) value ('Ava','BUPFCEDTZEQQEBUFEUVDZLWKTNWRKZBLTWLXIWGXWNYEYNEHHRDLYWFAMFMEZQXCZXVSAAJWRTNFXRHYUKWPWAQCXM',40163778,286463918,0);
INSERT INTO tweets (`user`, `body`, `liked`, `retweet`, `include_reply`) value ('Isabella','OQOUHLPDOWJNRIKOYXOOYUEPEVQQENEKZFYZJBEKQPO',763927989,187392711,1);
SOURCE increase.sql;
