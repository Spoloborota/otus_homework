package db

import (
	_ "github.com/go-sql-driver/mysql"
	"xorm.io/xorm"
)

type Config struct {
	DBConnString string
	DBDialect    string
}

type Manager struct {
	db xorm.Engine
}

func NewDBManager() {

}
