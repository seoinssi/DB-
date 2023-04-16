DROP TABLE IF EXISTS `lost property`;

CREATE TABLE `lost property` (
	`Lost_property ID`	int(10)	NOT NULL	COMMENT 'PK',
	`Lost_property_type`	varchar(10)	NOT NULL,
	`Lost_poperty_desc`	text(100)	NULL,
	`Loss_ID`	int(10)	NOT NULL	COMMENT 'FK'
);

DROP TABLE IF EXISTS `customer`;

CREATE TABLE `customer` (
	`Customer ID`	int(10)	NOT NULL	COMMENT 'PK',
	`Airplane_ticket ID`	int(10)	NOT NULL	COMMENT 'FK',
	`Customer_name`	varchar(6)	NOT NULL,
	`Customer_email`	varchar(20)	NULL	COMMENT 'AK',
	`Customer_contact`	varchar(15)	NOT NULL,
	`Resident_number`	char(14)	NOT NULL
);

DROP TABLE IF EXISTS `Baggage`;

CREATE TABLE `Baggage` (
	`Baggage_ID`	int(10)	NOT NULL	COMMENT 'PK',
	`airplane ID`	int(10)	NOT NULL	COMMENT 'FK',
	`Receipt_status`	Boolean	NOT NULL,
	`Additional_cost`	int(6)	NOT NULL,
	`Baggage_Weight`	int(3)	NOT NULL,
	`Date_of_receipt`	date	NOT NULL,
	`Customer ID`	int(10)	NOT NULL	COMMENT 'FK'
);

DROP TABLE IF EXISTS `Payment`;

CREATE TABLE `Payment` (
	`Payment ID`	int(10)	NOT NULL	COMMENT 'PK',
	`Payment_date`	date	NOT NULL,
	`Payment_type`	char(5)	NOT NULL,
	`Payment_way`	char(10)	NOT NULL,
	`Payment_amount`	int(8)	NOT NULL,
	`Payment_state`	char(3)	NOT NULL,
	`Card_number`	int(16)	NOT NULL,
	`Cardholder_Name`	varchar(6)	NOT NULL,
	`Card_Expiration_Date`	date	NOT NULL,
	`Airline ID`	int(10)	NOT NULL	COMMENT 'FK',
	`Airplane ID`	int(10)	NOT NULL	COMMENT 'FK',
	`Reservation ID`	int(10)	NOT NULL	COMMENT 'PK'
);

DROP TABLE IF EXISTS `Airline ticket`;

CREATE TABLE `Airline ticket` (
	`Airline_ticket ID`	int(10)	NOT NULL	COMMENT 'PK',
	`Payment ID`	int(10)	NOT NULL	COMMENT 'FK',
	`Payment_status`	Boolean	NOT NULL
);

DROP TABLE IF EXISTS `Cancellation`;

CREATE TABLE `Cancellation` (
	`Cancellation ID`	int(10)	NOT NULL	COMMENT 'PK',
	`Cancellation_date`	date	NOT NULL,
	`Cancellation_reason`	text(100)	NULL,
	`Processing_status`	char(3)	NOT NULL,
	`Airline_ticket ID`	int(10)	NOT NULL	COMMENT 'FK',
	`Payment ID`	int(10)	NOT NULL	COMMENT 'FK'
);

DROP TABLE IF EXISTS `flight_attendant`;

CREATE TABLE `flight_attendant` (
	`Flight_attendant ID`	int(10)	NOT NULL	COMMENT 'PK',
	`Schedule ID`	int(10)	NOT NULL	COMMENT 'FK',
	`Attendant_status`	char(5)	NOT NULL	COMMENT '(예: 책임 승무원, 주임 승무원 등)',
	`Attendant_type`	char(10)	NOT NULL	COMMENT '(예: 승무원, 기장 등)'
);

DROP TABLE IF EXISTS `flight schedule`;

CREATE TABLE `flight schedule` (
	`Schedule ID`	int(10)	NOT NULL	COMMENT 'PK',
	`Airplane ID`	int(10)	NOT NULL	COMMENT 'FK',
	`Number_of_flights`	int(5)	NULL,
	`Flight_time`	char(6)	NULL,
	`Flying_distance`	int(4)	NULL,
	`Arrive ID`	varchar(3)	NOT NULL	COMMENT 'FK',
	`Start ID`	varchar(3)	NOT NULL	COMMENT 'FK',
	`Flight_attendant ID`	int(10)	NOT NULL	COMMENT 'FK'
);

DROP TABLE IF EXISTS `Airline`;

CREATE TABLE `Airline` (
	`Airline ID`	int(10)	NOT NULL	COMMENT 'PK',
	`Airplane ID`	int(10)	NOT NULL	COMMENT 'FK',
	`Airline_name`	varchar(10)	NOT NULL,
	`Airline_contact`	varchar(15)	NOT NULL,
	`Nationality`	varchar(20)	NOT NULL	COMMENT 'AK'
);

DROP TABLE IF EXISTS `airport`;

CREATE TABLE `airport` (
	`Airport ID`	int(10)	NOT NULL	COMMENT 'PK',
	`Airport_code`	varchar(3)	NOT NULL	COMMENT 'AK',
	`Airport_name`	varchar(10)	NOT NULL,
	`Country_of_airport`	varchar(20)	NOT NULL,
	`Airline ID`	int(10)	NOT NULL	COMMENT 'FK',
	`Airplane ID`	int(10)	NOT NULL	COMMENT 'FK'
);

DROP TABLE IF EXISTS `airplane`;

CREATE TABLE `airplane` (
	`Airplane ID`	int(10)	NOT NULL	COMMENT 'PK',
	`Airplane_model`	varchar(7)	NOT NULL,
	`Airline ID`	int(10)	NOT NULL	COMMENT 'FK'
);

DROP TABLE IF EXISTS `Check`;

CREATE TABLE `Check` (
	`Check ID`	int(10)	NOT NULL	COMMENT 'PK',
	`Check_officer`	varchar(6)	NOT NULL,
	`Check_scedule`	date	NOT NULL,
	`Check_result`	text(100)	NULL,
	`Airplane ID`	int(10)	NOT NULL	COMMENT 'FK'
);

DROP TABLE IF EXISTS `seat`;

CREATE TABLE `seat` (
	`Seat ID`	int(10)	NOT NULL	COMMENT 'PK',
	`Airplane ID`	int(10)	NOT NULL	COMMENT 'FK',
	`Total_number_of_seat`	int(4)	NOT NULL,
	`Spare_seat`	int(4)	NOT NULL,
	`Number_of_seat`	char(3)	NOT NULL,
	`Seat_class`	int(4)	NOT NULL
);

DROP TABLE IF EXISTS `loss`;

CREATE TABLE `loss` (
	`Loss ID`	int(10)	NOT NULL	COMMENT 'PK',
	`Storage Location`	varchar(10)	NOT NULL,
	`Return_status`	Boolean	NOT NULL,
	`Lost_space`	varchar(10)	NOT NULL,
	`Reporte_ Information`	varchar(10)	NOT NULL,
	`Report_of_loss_date`	date	NOT NULL,
	`Customer ID`	int(10)	NOT NULL	COMMENT 'FK'
);

DROP TABLE IF EXISTS `reservation`;

CREATE TABLE `reservation` (
	`Reservation ID`	int(10)	NOT NULL	COMMENT 'PK',
	`Reservation_type`	char(10)	NOT NULL,
	`Number_of_people`	int(3)	NOT NULL,
	`Reservation_date`	date	NOT NULL,
	`Customer ID`	int(10)	NOT NULL	COMMENT 'FK',
	`Airplane_ticket ID`	int(10)	NOT NULL	COMMENT 'FK'
);

DROP TABLE IF EXISTS `Departure`;

CREATE TABLE `Departure` (
	`Start ID`	varchar(3)	NOT NULL	COMMENT 'PK',
	`Schedule ID`	int(10)	NOT NULL	COMMENT 'FK',
	`Start_time`	Departure_time	NULL,
	`Airport ID`	int(10)	NOT NULL	COMMENT 'FK'
);

DROP TABLE IF EXISTS `Arrival`;

CREATE TABLE `Arrival` (
	`Arrive ID`	varchar(3)	NOT NULL	COMMENT 'PK',
	`Schedule ID`	int(10)	NOT NULL	COMMENT 'FK',
	`Arrive_time`	datetime	NULL,
	`Airport ID`	int(10)	NOT NULL	COMMENT 'FK'
);

ALTER TABLE `lost property` ADD CONSTRAINT `PK_LOST PROPERTY` PRIMARY KEY (
	`Lost_property ID`
);

ALTER TABLE `customer` ADD CONSTRAINT `PK_CUSTOMER` PRIMARY KEY (
	`Customer ID`,
	`Airplane_ticket ID`
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
	`Flight_attendant ID`,
	`Schedule ID`
);

ALTER TABLE `flight schedule` ADD CONSTRAINT `PK_FLIGHT SCHEDULE` PRIMARY KEY (
	`Schedule ID`,
	`Airplane ID`
);

ALTER TABLE `Airline` ADD CONSTRAINT `PK_AIRLINE` PRIMARY KEY (
	`Airline ID`,
	`Airplane ID`
);

ALTER TABLE `airport` ADD CONSTRAINT `PK_AIRPORT` PRIMARY KEY (
	`Airport ID`,
	`Airport_code`
);

ALTER TABLE `airplane` ADD CONSTRAINT `PK_AIRPLANE` PRIMARY KEY (
	`Airplane ID`
);

ALTER TABLE `Check` ADD CONSTRAINT `PK_CHECK` PRIMARY KEY (
	`Check ID`
);

ALTER TABLE `seat` ADD CONSTRAINT `PK_SEAT` PRIMARY KEY (
	`Seat ID`,
	`Airplane ID`
);

ALTER TABLE `loss` ADD CONSTRAINT `PK_LOSS` PRIMARY KEY (
	`Loss ID`
);

ALTER TABLE `reservation` ADD CONSTRAINT `PK_RESERVATION` PRIMARY KEY (
	`Reservation ID`
);

ALTER TABLE `Departure` ADD CONSTRAINT `PK_DEPARTURE` PRIMARY KEY (
	`Start ID`,
	`Schedule ID`
);

ALTER TABLE `Arrival` ADD CONSTRAINT `PK_ARRIVAL` PRIMARY KEY (
	`Arrive ID`,
	`Schedule ID`
);

ALTER TABLE `lost property` ADD CONSTRAINT `FK_loss_TO_lost property_1` FOREIGN KEY (
	`Loss_ID`
)
REFERENCES `loss` (
	`Loss ID`
);

ALTER TABLE `Baggage` ADD CONSTRAINT `FK_customer_TO_Baggage_1` FOREIGN KEY (
	`Customer ID`
)
REFERENCES `customer` (
	`Customer ID`
);

ALTER TABLE `Payment` ADD CONSTRAINT `FK_Airline_TO_Payment_1` FOREIGN KEY (
	`Airline ID`
)
REFERENCES `Airline` (
	`Airline ID`
);

ALTER TABLE `Payment` ADD CONSTRAINT `FK_Airline_TO_Payment_2` FOREIGN KEY (
	`Airplane ID`
)
REFERENCES `Airline` (
	`Airplane ID`
);

ALTER TABLE `Payment` ADD CONSTRAINT `FK_reservation_TO_Payment_1` FOREIGN KEY (
	`Reservation ID`
)
REFERENCES `reservation` (
	`Reservation ID`
);

ALTER TABLE `Airline ticket` ADD CONSTRAINT `FK_Payment_TO_Airline ticket_1` FOREIGN KEY (
	`Payment ID`
)
REFERENCES `Payment` (
	`Payment ID`
);

ALTER TABLE `Cancellation` ADD CONSTRAINT `FK_Airline ticket_TO_Cancellation_1` FOREIGN KEY (
	`Airline_ticket ID`
)
REFERENCES `Airline ticket` (
	`Airline_ticket ID`
);

ALTER TABLE `Cancellation` ADD CONSTRAINT `FK_Airline ticket_TO_Cancellation_2` FOREIGN KEY (
	`Payment ID`
)
REFERENCES `Airline ticket` (
	`Payment ID`
);

ALTER TABLE `flight schedule` ADD CONSTRAINT `FK_airplane_TO_flight schedule_1` FOREIGN KEY (
	`Airplane ID`
)
REFERENCES `airplane` (
	`Airplane ID`
);

ALTER TABLE `flight schedule` ADD CONSTRAINT `FK_Arrival_TO_flight schedule_1` FOREIGN KEY (
	`Arrive ID`
)
REFERENCES `Arrival` (
	`Arrive ID`
);

ALTER TABLE `flight schedule` ADD CONSTRAINT `FK_Departure_TO_flight schedule_1` FOREIGN KEY (
	`Start ID`
)
REFERENCES `Departure` (
	`Start ID`
);

ALTER TABLE `flight schedule` ADD CONSTRAINT `FK_flight_attendant_TO_flight schedule_1` FOREIGN KEY (
	`Flight_attendant ID`
)
REFERENCES `flight_attendant` (
	`Flight_attendant ID`
);

ALTER TABLE `airport` ADD CONSTRAINT `FK_Airline_TO_airport_1` FOREIGN KEY (
	`Airline ID`
)
REFERENCES `Airline` (
	`Airline ID`
);

ALTER TABLE `airport` ADD CONSTRAINT `FK_airplane_TO_airport_1` FOREIGN KEY (
	`Airplane ID`
)
REFERENCES `airplane` (
	`Airplane ID`
);

ALTER TABLE `airplane` ADD CONSTRAINT `FK_Airline_TO_airplane_1` FOREIGN KEY (
	`Airline ID`
)
REFERENCES `Airline` (
	`Airline ID`
);

ALTER TABLE `Check` ADD CONSTRAINT `FK_airplane_TO_Check_1` FOREIGN KEY (
	`Airplane ID`
)
REFERENCES `airplane` (
	`Airplane ID`
);

ALTER TABLE `seat` ADD CONSTRAINT `FK_airplane_TO_seat_1` FOREIGN KEY (
	`Airplane ID`
)
REFERENCES `airplane` (
	`Airplane ID`
);

ALTER TABLE `loss` ADD CONSTRAINT `FK_customer_TO_loss_1` FOREIGN KEY (
	`Customer ID`
)
REFERENCES `customer` (
	`Customer ID`
);

ALTER TABLE `reservation` ADD CONSTRAINT `FK_customer_TO_reservation_1` FOREIGN KEY (
	`Customer ID`
)
REFERENCES `customer` (
	`Customer ID`
);

ALTER TABLE `reservation` ADD CONSTRAINT `FK_customer_TO_reservation_2` FOREIGN KEY (
	`Airplane_ticket ID`
)
REFERENCES `customer` (
	`Airplane_ticket ID`
);

ALTER TABLE `Departure` ADD CONSTRAINT `FK_airport_TO_Departure_1` FOREIGN KEY (
	`Airport ID`
)
REFERENCES `airport` (
	`Airport ID`
);

ALTER TABLE `Arrival` ADD CONSTRAINT `FK_airport_TO_Arrival_1` FOREIGN KEY (
	`Airport ID`
)
REFERENCES `airport` (
	`Airport ID`
);

