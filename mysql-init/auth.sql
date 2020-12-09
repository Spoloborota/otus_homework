CREATE TABLE `auth`
(
    `id`            varchar(100) NOT NULL,
    `email`         varchar(50)  NOT NULL,
    `password_hash` varchar(100) NOT NULL,
    `password_salt` varchar(100) NOT NULL,
    UNIQUE KEY `auth_UN` (`email`),
    KEY `reg_info_FK` (`id`),
    CONSTRAINT `reg_info_FK` FOREIGN KEY (`id`) REFERENCES `account` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8;
