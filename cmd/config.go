package cmd

import (
	"fmt"
	"github.com/spf13/pflag"
	"github.com/spf13/viper"
	"otus_homework/internal/db"
)

const (
	dbConnString = "db.connstring"
	dbDialect    = "db.dialect"
)

type Config struct {
	db.Config
}

func InitConfig() Config {
	pflag.String(dbConnString, "root:root@tcp(localhost:3306)/soc_net", "Connection string to db")
	pflag.String(dbDialect, "mysql", "Db dialect")

	pflag.Parse()

	err := viper.BindPFlags(pflag.CommandLine)
	if err != nil {
		panic("Failed to read config" + err.Error())
	}

	cfg := Config{
		Config: db.Config{
			DBConnString: viper.GetString(dbConnString),
			DBDialect:    viper.GetString(dbDialect),
		},
	}

	err = cfg.Validate()
	if err != nil {
		panic("Failed to validate config" + err.Error())
	}

	return cfg
}

func (c *Config) Validate() error {
	const fieldMissingErrorTemplate = "%s field is missing"
	if c.DBConnString == "" {
		return fmt.Errorf(fieldMissingErrorTemplate, dbConnString)
	}
	if c.DBDialect == "" {
		return fmt.Errorf(fieldMissingErrorTemplate, dbDialect)
	}
	return nil
}
