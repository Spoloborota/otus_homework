CREATE TABLE soc_net.post
(
    id         varchar(100) NOT NULL,
    account_id varchar(100) NOT NULL,
    `data`     varchar(200) NOT NULL,
    ts         TIMESTAMP    NOT NULL,
    CONSTRAINT post_PK PRIMARY KEY (id),
    CONSTRAINT post_FK FOREIGN KEY (account_id) REFERENCES soc_net.account (id) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB
DEFAULT CHARSET=utf8
COLLATE=utf8_general_ci;
