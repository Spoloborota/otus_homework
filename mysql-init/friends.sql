CREATE TABLE soc_net.friends
(
    account_id        varchar(100) NOT NULL,
    friend_account_id varchar(100) NOT NULL,
    CONSTRAINT friends_FK FOREIGN KEY (account_id) REFERENCES soc_net.account (id) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT friends_FK_1 FOREIGN KEY (friend_account_id) REFERENCES soc_net.account (id) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB
DEFAULT CHARSET=utf8
COLLATE=utf8_general_ci;
