CREATE TABLE soc_net.account
(
    id          varchar(100)                   NOT NULL,
    name        varchar(50)                    NOT NULL,
    surname     varchar(50)                    NOT NULL,
    birth_day   INT UNSIGNED                   NOT NULL,
    birth_month INT UNSIGNED                   NOT NULL,
    birth_year  INT UNSIGNED                   NOT NULL,
    gender      ENUM ('male','female','other') NOT NULL,
    interests   varchar(200)                   NULL,
    address     varchar(100)                   NULL,
    CONSTRAINT account_PK PRIMARY KEY (id)
)
    ENGINE = InnoDB
    DEFAULT CHARSET = utf8
    COLLATE = utf8_general_ci;