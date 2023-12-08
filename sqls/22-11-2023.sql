create TABLE `user` (
    `id` bigint NOT NULL DEFAULT 'na',
    `user_name` varchar(50) NOT NULL DEFAULT 'na',
    `password` varchar(10),
    PRIMARY KEY (`id`)
)ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=latin1;