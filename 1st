CREATE TABLE `lost property` (
	`lost_property ID`	int(10)	NOT NULL	COMMENT 'PK',
	`lost_property type`	string(10)	NULL,
	`lost_poperty desc`	string(10)	NULL,
	`customer ID`	int(10)	NOT NULL	COMMENT 'PK',
	`airplane_ticket ID`	int(10)	NOT NULL	COMMENT 'FK'
);

CREATE TABLE `customer` (
	`customer ID`	int(10)	NOT NULL	COMMENT 'PK',
	`airplane_ticket ID`	int(10)	NOT NULL	COMMENT 'FK',
	`customer_name`	string(6)	NULL,
	`customer_email`	string(20)	NULL,
	`customer_contact`	string(15)	NULL
);

CREATE TABLE `Baggage` (
	`Baggage_ID`	int(10)	NOT NULL	COMMENT 'PK',
	`airplane ID`	int(10)	NOT NULL	COMMENT 'FK',
	`Receipt_status`	char(1)	NULL,
	`additional cost`	int(8)	NULL,
	`baggage_Weight`	int(3)	NULL,
	`Date_of_receipt`	date(8)	NULL,
	`customer ID`	int(10)	NOT NULL	COMMENT 'PK',
	`airplane_ticket ID`	int(10)	NOT NULL	COMMENT 'FK'
);

CREATE TABLE `Payment` (
	`Payment ID`	int(10)	NOT NULL	COMMENT 'PK',
	`Payment_date`	date(8)	NULL,
	`Payment_type`	string(10)	NULL,
	`Payment_way`	string(10)	NULL	COMMENT 'online or offline',
	`ayment_amount`	int(8)	NULL,
	`Payment_state`	string(8)	NULL,
	`card_number`	int(16)	NULL,
	`Cardholder_Name`	string(6)	NULL,
	`Card_Expiration_Date`	date(8)	NULL,
	`customer ID`	int(10)	NOT NULL	COMMENT 'PK',
	`airplane_ticket ID`	int(10)	NOT NULL	COMMENT 'FK',
	`Airline ID`	int(10)	NOT NULL	COMMENT 'PK',
	`Airplane ID`	int(10)	NOT NULL	COMMENT 'FK'
);

CREATE TABLE `Airline ticket` (
	`Airline_ticket ID`	int(10)	NOT NULL	COMMENT 'PK',
	`Payment ID`	int(10)	NOT NULL	COMMENT 'PK',
	`Payment status`	cha(1)	NULL
);

CREATE TABLE `Cancellation` (
	`Cancellation ID`	int(10)	NOT NULL	COMMENT 'PK',
	`Cancellation_date`	date(8)	NULL,
	`Cancellation_reason`	string(20)	NULL,
	`Processing_status`	string(10)	NULL,
	`Airline_ticket ID`	int(10)	NOT NULL	COMMENT 'PK',
	`Payment ID`	int(10)	NOT NULL	COMMENT 'PK'
);

CREATE TABLE `flight_attendant` (
	`flight_attendant ID`	int(10)	NOT NULL	COMMENT 'PK',
	`Schedule ID`	int(10)	NOT NULL	COMMENT 'FK',
	`attendant_status`	string(5)	NULL	COMMENT '(예: 책임 승무원, 주임 승무원 등)',
	`attendant_type`	string(10)	NULL	COMMENT '(예: 승무원, 기장 등)',
	`Field3`	note	NULL	COMMENT '특별한 사항이나 메모를 추가할 수 있는 공간'
);

CREATE TABLE `flight schedule` (
	`Schedule ID`	int(10)	NOT NULL	COMMENT 'PK',
	`Airplane_route ID`	int(10)	NOT NULL	COMMENT 'FK',
	`Flight ID`	int(10)	NOT NULL	COMMENT 'FK',
	`Airplane ID`	int(10)	NOT NULL	COMMENT 'PK',
	`starting_point`	char(5)	NULL,
	`Finishing_point`	char(5)	NULL,
	`Number_of_flights`	int(5)	NULL,
	`Flight_time`	time(4)	NULL	COMMENT 'time...?',
	`Departure_time`	date(8)	NULL,
	`Arrival_time`	date(8)	NULL,
	`flight_attendant ID`	int(10)	NOT NULL	COMMENT 'PK',
	`Schedule ID2`	int(10)	NOT NULL	COMMENT 'FK'
);

CREATE TABLE `Airline` (
	`Airline ID`	int(10)	NOT NULL	COMMENT 'PK',
	`Airplane ID`	int(10)	NOT NULL	COMMENT 'FK',
	`Airline_name`	string(10)	NULL,
	`Airline_contact`	string(15)	NULL,
	`Nationality`	string(20)	NULL
);

CREATE TABLE `airport` (
	`Airport ID`	int(10)	NOT NULL	COMMENT 'PK',
	`Airport name`	string(10)	NULL,
	`City_of_airport`	string(20)	NULL,
	`Country_of_airport`	string(20)	NULL,
	`Airplane ID`	int(10)	NOT NULL	COMMENT 'FK',
	`Airline ID`	int(10)	NOT NULL	COMMENT 'PK',
	`Airplane ID2`	int(10)	NOT NULL	COMMENT 'PK'
);

CREATE TABLE `airplane` (
	`Airplane ID`	int(10)	NOT NULL	COMMENT 'PK',
	`Airplane_model`	string(20)	NULL,
	`Airline ID`	int(10)	NOT NULL	COMMENT 'PK',
	`Airplane ID2`	int(10)	NOT NULL	COMMENT 'FK'
);

CREATE TABLE `Inspection` (
	`Inspection ID`	int(10)	NOT NULL	COMMENT 'PK',
	`Inspection_officer`	string(6)	NULL,
	`Inspection_scedule`	date(8)	NULL,
	`Inspection_result`	string(10)	NULL,
	`Airplane ID`	int(10)	NOT NULL	COMMENT 'PK'
);

CREATE TABLE `seat` (
	`Seat ID`	int(10)	NOT NULL	COMMENT 'PK',
	`Airplane ID`	int(10)	NOT NULL	COMMENT 'PK',
	`total_number_of_seat`	int(4)	NULL,
	`Spare_seat`	int(4)	NULL,
	`Number_of_seat`	char(3)	NULL	COMMENT 'int에서 char로 바꿨어요! 
아무래도 비행기는 a04 b11 이런식인 것 같아서용 ㅎㅎ',
	`Seat class`	int(4)	NULL
);

CREATE TABLE `Flight` (
	`Flight ID`	int(10)	NOT NULL	COMMENT 'PK',
	`Airline  ID`	int(10)	NOT NULL	COMMENT 'FK',
	`Airplane ID`	int(10)	NOT NULL	COMMENT 'FK',
	`Seat ID`	int(10)	NOT NULL	COMMENT 'FK',
	`Schedule ID`	int(10)	NOT NULL	COMMENT 'PK',
	`Airplane_route ID`	int(10)	NOT NULL	COMMENT 'FK',
	`Flying_distance`	int(4)	NULL
);

ALTER TABLE `lost property` ADD CONSTRAINT `PK_LOST PROPERTY` PRIMARY KEY (
	`lost_property ID`
);

ALTER TABLE `customer` ADD CONSTRAINT `PK_CUSTOMER` PRIMARY KEY (
	`customer ID`,
	`airplane_ticket ID`
);

ALTER TABLE `Baggage` ADD CONSTRAINT `PK_BAGGAGE` PRIMARY KEY (
	`Baggage_ID`,
	`airplane ID`
);

ALTER TABLE `Payment` ADD CONSTRAINT `PK_PAYMENT` PRIMARY KEY (
	`Payment ID`
);

ALTER TABLE `Airline ticket` ADD CONSTRAINT `PK_AIRLINE TICKET` PRIMARY KEY (
	`Airline_ticket ID`,
	`Payment ID`
);

ALTER TABLE `Cancellation` ADD CONSTRAINT `PK_CANCELLATION` PRIMARY KEY (
	`Cancellation ID`
);

ALTER TABLE `flight_attendant` ADD CONSTRAINT `PK_FLIGHT_ATTENDANT` PRIMARY KEY (
	`flight_attendant ID`,
	`Schedule ID`
);

ALTER TABLE `flight schedule` ADD CONSTRAINT `PK_FLIGHT SCHEDULE` PRIMARY KEY (
	`Schedule ID`,
	`Airplane_route ID`,
	`Flight ID`,
	`Airplane ID`
);

ALTER TABLE `Airline` ADD CONSTRAINT `PK_AIRLINE` PRIMARY KEY (
	`Airline ID`,
	`Airplane ID`
);

ALTER TABLE `airport` ADD CONSTRAINT `PK_AIRPORT` PRIMARY KEY (
	`Airport ID`
);

ALTER TABLE `airplane` ADD CONSTRAINT `PK_AIRPLANE` PRIMARY KEY (
	`Airplane ID`
);

ALTER TABLE `Inspection` ADD CONSTRAINT `PK_INSPECTION` PRIMARY KEY (
	`Inspection ID`
);

ALTER TABLE `seat` ADD CONSTRAINT `PK_SEAT` PRIMARY KEY (
	`Seat ID`,
	`Airplane ID`
);

ALTER TABLE `Flight` ADD CONSTRAINT `PK_FLIGHT` PRIMARY KEY (
	`Flight ID`,
	`Airline  ID`,
	`Airplane ID`,
	`Seat ID`,
	`Schedule ID`,
	`Airplane_route ID`
);

