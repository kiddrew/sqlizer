create table accounts (
  `id` int auto_increment,
  `created_at` datetime,
  `data` text,
  --`company` varchar(255),
  --`url` varchar(255),
  --`location` varchar(255),
  --`billing_email` varchar(255),
  --`gravatar_email` varchar(255),
  --`is_organization` bool,
  primary key (`id`)
) engine=innodb;

create table users (
  `id` int auto_increment,
  `created_at` datetime,
  `email` varchar(255),
  `username` varchar(255),
  `data` text,
  --`password_hash` varchar(32),
  --`name` varchar(255),
  --`company` varchar(255),
  --`gravatar` varchar(255),
  primary key (`id`)
) engine=innodb;

create table user_account_roles (
  `user_id` int,
  `account_id` int,
  `role` int,
) engine=innodb;

create table databases (
  `id` int auto_increment,
  `created_at` datetime,
  `account_id` int,
  `data` text,
  --`created_by` int,
  --`updated_at` datetime,
  --`updated_by` int,
  --`db_type` int,
  primary key (`id`)
) engine=innodb;

create table queries (
  `id` int auto_increment,
  `created_at` datetime,
  `account_id` int,
  `data` text,
  --`created_by` int,
  --`updated_at` datetime,
  --`updated_by` int,
  --`name` varchar(30),
  --`query` text,
  primary key (`id`)
) engine=innodb;

create table query_tokens (
  `id` int auto_increment,
  `query_id` int,
  `data` text,
  --`token_string` varchar(255),
  --`type` int, -- int, string, bool, date, datetime, query_result
  --`is_multiple` bool,
  --`limit` int,
  primary key (`id`)
) engine=innodb;

create table query_runs (
  `id` int auto_increment,
  `created_at` datetime,
  `query_id` int,
  `data` mediumtext,
  --`run_by` int,
  --`result` mediumtext,
  primary key (`id`)
) engine=innodb;

create table result_views (
  `id` int auto_increment,
  `created_at` datetime,
  `query_id` int,
  `created_by` int,
  `data` text,
  --`type` int,
  primary key (`id`)
) engine=innodb;

create table cc_tokens (
  `id` int auto_increment,
  `created_at` datetime,
  `account_id` int,
  primary key (`id`)
) engine=innodb;
