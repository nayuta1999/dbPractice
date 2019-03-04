package main

import "fmt"

func main() {

    names := [5] string{"John", "Rose", "Jack", "Mary", "Olivia"}

    for i := 0; i < 10; i++ {
        fmt.Println("INSERT INTO users(`name`) value ('" + names[i%5] + "');")
    }
}
