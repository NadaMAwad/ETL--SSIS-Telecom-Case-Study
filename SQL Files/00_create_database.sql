-- Create DB --
CREATE DATABASE Telecom

-- Create Fact Table -- 

CREATE TABLE fact_transaction (
	id int NOT NULL identity (1,1),
	transaction_id int NOT NULL, -- transaction id from the source systme / file
	imsi varchar(9) NOT NULL,
	subscriber_id int,
	tac varchar(8) NOT NULL,
	snr varchar(6) NOT NULL,
	imei varchar(14)  NULL,
	cell int NOT NULL,
	lac int NOT NULL,
	event_type varchar(2)  NULL,
	event_ts datetime NOT NULL,
	audit_id int NOT NULL default (-1)

	constraint pk_fact_transaction_id primary key (id)
)


ALTER TABLE fact_transaction ALTER COLUMN tac VARCHAR(8) NULL
ALTER TABLE fact_transaction ALTER COLUMN snr VARCHAR(8) NULL
