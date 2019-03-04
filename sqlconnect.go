package main

import (
    "database/sql"
    _ "github.com/go-sql-driver/mysql"
    "fmt"
)

func main() {

    //[username[:password]@][protocol[(address)]]/dbname[?param1=value1&...&paramN=valueN]
    db, err := sql.Open("mysql", "sample:sample@tcp(127.0.0.1:3306)/sample")
    if err != nil {
        panic(err)
    }

    err = db.Ping()
    if err != nil {
        panic(err)
    }
    defer db.Close()

    var id int
    var name string
    rows, err := db.Query("select * from users where id < ?", 6);
    if err != nil {
        panic(err)
    }
    defer rows.Close()

    for rows.Next() {
        err := rows.Scan(&id, &name)
        if err != nil {
            panic(err)
        }
        fmt.Println(id, name);
    }

    err = rows.Err()
    if err != nil {
        panic(err)
    }
}
