package main

import (
    "database/sql"
    _ "github.com/go-sql-driver/mysql"
    "fmt"
)

func main() {

    db, err := sql.Open("mysql", "sample:sample@tcp(127.0.0.1:3306)/sample");
    if err != nil {
        panic(err)
    }

    err = db.Ping()
    if err != nil {
        panic(err)
    }


    stmt, err := db.Prepare("select * from users where id < ?")
    if err != nil {
        panic(err)
    }
    defer stmt.Close()

    var (
        id int
        name string
    )
    rows, err := stmt.Query(3)
    for rows.Next() {
        err := rows.Scan(&id, &name)
        if err != nil {
            panic(err)
        }
        fmt.Println(id, name)
    }
    defer rows.Close()

    if err = rows.Err(); err != nil {
        panic(err)
    }
}
