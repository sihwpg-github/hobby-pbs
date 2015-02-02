package main

import (
	"database/sql"
	"fmt"
	"log"

	_ "github.com/go-sql-driver/mysql"
)

func main() {
	db, err := sql.Open("mysql", "root@localhost")
	if err != nil || db == nil {
		log.Fatalf("unable to open db connection %v", err)
	}

	fmt.Printf("con info: %v", db)
}
