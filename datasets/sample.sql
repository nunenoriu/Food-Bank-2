BEGIN TRANSACTION;
CREATE TABLE "Account" (
	id INTEGER NOT NULL, 
	"Name" VARCHAR(255), 
	"ParentId" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "Account" VALUES(1,'Greens Food Bank','');
INSERT INTO "Account" VALUES(2,'Canned Food Company','');
CREATE TABLE "Delivery_Item__c" (
	id INTEGER NOT NULL, 
	"Food_Expiration_Date__c" VARCHAR(255), 
	"Food_Storage__c" VARCHAR(255), 
	"Name" VARCHAR(255), 
	"Delivery__c" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "Delivery_Item__c" VALUES(1,'2024-02-01','Non-refrigerated','Sweet Corn','1');
INSERT INTO "Delivery_Item__c" VALUES(2,'2021-02-17','Refrigerated','Cucumber','2');
INSERT INTO "Delivery_Item__c" VALUES(3,'2021-02-14','Refrigerated','Green Beans','2');
CREATE TABLE "Delivery__c" (
	id INTEGER NOT NULL, 
	"Scheduled_Date__c" VARCHAR(255), 
	"Status__c" VARCHAR(255), 
	"Supplier__c" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "Delivery__c" VALUES(1,'2021-02-26T12:00:00.000+0000','Requested','2');
INSERT INTO "Delivery__c" VALUES(2,'2021-02-11T12:00:00.000+0000','Scheduled','1');
COMMIT;
