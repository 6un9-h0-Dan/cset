/*
Run this script on:

(localdb)\v11.0.NCUAWeb10310    -  This database will be modified

to synchronize it with:

sql16dev1.csetweb

You are recommended to back up your database before running this script

Script created by SQL Data Compare version 14.5.1.18536 from Red Gate Software Ltd at 9/2/2021 11:16:29 AM

*/
		
SET NUMERIC_ROUNDABORT OFF
GO
SET ANSI_PADDING, ANSI_WARNINGS, CONCAT_NULL_YIELDS_NULL, ARITHABORT, QUOTED_IDENTIFIER, ANSI_NULLS, NOCOUNT ON
GO
SET DATEFORMAT YMD
GO
SET XACT_ABORT ON
GO
SET TRANSACTION ISOLATION LEVEL Serializable
GO
BEGIN TRANSACTION

PRINT(N'Update rows in [dbo].[IRP]')
UPDATE [dbo].[IRP] SET [Validation_Approach]='Review the network topology diagrams to confirm the number of (ISP) connections with the appropriate staff.' WHERE [IRP_ID] = 2
UPDATE [dbo].[IRP] SET [Validation_Approach]='Review the network topology diagram(s) for external connections.  If external connections are not clearly denoted in the network diagram(s) discuss the existence of external connections with management in order to identify if there are any that are unsecured.' WHERE [IRP_ID] = 3
UPDATE [dbo].[IRP] SET [Validation_Approach]='Review the network diagrams for all existing wireless access points.' WHERE [IRP_ID] = 4
UPDATE [dbo].[IRP] SET [Validation_Approach]='Review list of non-owned CU devices that access the network.' WHERE [IRP_ID] = 5
UPDATE [dbo].[IRP] SET [Validation_Approach]='Review the listing of third-party service providers and the number of their employees.  Discuss with management the complexity (security of the connection) with which third parties access credit union systems.' WHERE [IRP_ID] = 6
UPDATE [dbo].[IRP] SET [Validation_Approach]='Review the network diagram(s) to determine if the institution identifies dedicated connections.   Discuss with management the nature and business need for these connections.' WHERE [IRP_ID] = 7
UPDATE [dbo].[IRP] SET [Validation_Approach]='Review the inventory of internally developed software, applications, or technologies.   Discuss with management which are internally hosted, professionally developed, and supporting critical activities.' WHERE [IRP_ID] = 8
UPDATE [dbo].[IRP] SET [Validation_Approach]='Review the inventory of software and or applications.  Discuss with management which applications are internally hosted, vendor-developed, and supporting critical activities. ' WHERE [IRP_ID] = 9
UPDATE [dbo].[IRP] SET [Validation_Approach]='Review the inventory of internally developed software, applications, or technologies.   Discuss with management which applications are internally hosted, user-developed technologies ( non-professionals), and supporting critical activities. ' WHERE [IRP_ID] = 10
UPDATE [dbo].[IRP] SET [Validation_Approach]='Review the inventory of credit union owned hardware and software and their end of life dates to determine if any reach that date within 2 years.  If not included above review the network server and operating system list and determine if any of their end of life dates are within 2 years.   Discuss with management whether any of these systems that are within 2 years of their end of life date support critical activities.  ' WHERE [IRP_ID] = 11
UPDATE [dbo].[IRP] SET [Validation_Approach]='Review the software inventory for open source software.  Discuss with management whether any of these support critical operations. ' WHERE [IRP_ID] = 12
UPDATE [dbo].[IRP] SET [Validation_Approach]='Review the hardware inventory to identify the total number of network devices in use at the institution.   Confirm with management this includes virtual servers not physical servers in their virtualized environment. ' WHERE [IRP_ID] = 13
UPDATE [dbo].[IRP] SET [Validation_Approach]='Review the listing of third-party service providers, services they provide, and their risk level.    Discuss with management which of these store and process information supporting critical activities.' WHERE [IRP_ID] = 14
UPDATE [dbo].[IRP] SET [Validation_Approach]='Review the listing of third-party service providers, the service they provide and their risk level.   Discuss with management which of these  service providers supporting critical activities use private or public cloud platforms and if any of them use international cloud locations. ' WHERE [IRP_ID] = 15
UPDATE [dbo].[IRP] SET [Validation_Approach]='Review the credit union''s website, list of third party service providers, list of services running on network servers, and network topology diagrams to determine the nature of delivery channels offered,  Discuss with management which of these include retail account origination or management of large value assets. ' WHERE [IRP_ID] = 17
UPDATE [dbo].[IRP] SET [Validation_Approach]='Review the credit union online profile IT tab, third party service providers, risk assessment for electronic banking services, software inventory, and network topology diagrams to determine the complexity of mobile banking offerings.  Discuss with management if these services are provided to corporate clients and if they are originating ACH or accepting wires via mobile devices. ' WHERE [IRP_ID] = 18
UPDATE [dbo].[IRP] SET [Validation_Approach]='Review the credit union online profile IT tab, the Sites tab (site functions), and network topology diagrams to determine the level of ATM offerings.  Discuss with management if the ATM services are managed internally, reloaded internally, if they provide ATM services to other instiutions, and if they have  international ATMs. ' WHERE [IRP_ID] = 19
UPDATE [dbo].[IRP] SET [Validation_Approach]='Review credit union online profile programs & services tab to determine if a debit or credit card program exists.     Discuss with management the volume of debit or credit cards issued directly or via a third party service provider.' WHERE [IRP_ID] = 21
UPDATE [dbo].[IRP] SET [Validation_Approach]='Review credit union online profile programs & services tab to detemine if a prepaid card program exists.     Discuss with management the volume of prepaid cards issued directly or via a third party service provider. ' WHERE [IRP_ID] = 22
UPDATE [dbo].[IRP] SET [Validation_Approach]='Review the credit union online profile IT tab to determine if the credit union originates ACH transactions.    Discuss with management if they have third party payment senders or nested third party senders.   Ask management for the daily volume of debits and credits originated.' WHERE [IRP_ID] = 25
UPDATE [dbo].[IRP] SET [Validation_Approach]='Review the credit union online profile IT tab to determine if the credit union originates wholesale payments (CHIPS).  Confirm with mangement whether the credit union originates wholesale payments and confirm the volume to total assets. ' WHERE [IRP_ID] = 26
UPDATE [dbo].[IRP] SET [Validation_Approach]='Review the credit union online profile IT tab to determine if the credit union performs domestic and international wires and the various ways they receive wire requests.  wire transfers.  ' WHERE [IRP_ID] = 27
UPDATE [dbo].[IRP] SET [Validation_Approach]='Review credit union online profile IT tab and determine if the credit union offers merchant processing.    Discuss with management if they offer merchants remote deposit capture and how many clients use it and to provide a list of daily transaction volume. ' WHERE [IRP_ID] = 28
UPDATE [dbo].[IRP] SET [Validation_Approach]='Review credit union online products & services tab and determine if the credit union offers global (international) remittances.    Discuss with management the gross daily transaction volume of global remittances. ' WHERE [IRP_ID] = 29
UPDATE [dbo].[IRP] SET [Validation_Approach]='Review the credit union online profile IT tab to determine whether the credit union provides merchant processing.   Discus with management the number of merchants for whom they provide this service. ' WHERE [IRP_ID] = 33
UPDATE [dbo].[IRP] SET [Validation_Approach]='Review credit union online profile IT tab, the strategic and/or business plans for IT, list of recent and planned IT projects, and the information security and technology budget to identify potential mergers or acquisitions or divestitures and joint ventures.  Discuss with management their intentions regarding mergers, acquisitions, divestitures or joint ventures. ' WHERE [IRP_ID] = 36
UPDATE [dbo].[IRP] SET [Validation_Approach]='Review the most recent 5300 Call Report, page 7, to determine the number of full and part time employees.    Discuss with management the total number of employees including information technology and cybersecurity contractors.   ' WHERE [IRP_ID] = 37
UPDATE [dbo].[IRP] SET [Validation_Approach]='Review IT/ IS organizational charts, job descriptions for IT/Is, and succession plans for critical IT staff.  Confirm with management the amount of turnover of key IT and information security staff. ' WHERE [IRP_ID] = 38
UPDATE [dbo].[IRP] SET [Validation_Approach]='Review the list of network and system administrators.  Discuss with management the level turnover of network and system administrators and the use if any of external administrators. ' WHERE [IRP_ID] = 39
UPDATE [dbo].[IRP] SET [Validation_Approach]='Review the list of recent and planned IT projects, and the information security and technology budget, the report to the board on compliance with ISP, the IT steering or other committee minutes.  Discuss with management the frequency and volume of information technology changes.' WHERE [IRP_ID] = 40
UPDATE [dbo].[IRP] SET [Validation_Approach]='Review the report to the board on the annual compliance with the ISP, the IT steering or other management committee, the incident reports for security events occurring since the last exam.  Discuss with management the number of security events or cyber attacks attempted since the last examination.' WHERE [IRP_ID] = 44
update IRP set validation_approach = 'Review the listing of third-party service providers, list of services running on network servers, and network topology diagrams to determine the nature of delivery channels offeredDiscuss with management which of these include retail account origination or management of large value assets.' where irp_id = 17
update IRP set validation_approach = 'Review the credit union’s list of third party service providers, risk assessment for electronic banking services, software inventory, and network topology diagrams to determine the complexity of mobile banking offeringsDiscuss with management if these services are provided to corporate clients and if they are originating ACH or accepting wires via mobile devices.' where irp_id = 18
update IRP set validation_approach = 'Review the credit union number of branch locations and network topology diagrams to determine the level of ATM offerings (DRL28)Discuss with management if the ATM services are managed internally, reloaded internally, if they provide ATM services to other institutions, and if they have international ATMs.' where irp_id = 19
update IRP set validation_approach = 'If a debit or credit card program exists, discuss with management the volume of debit or credit cards issued directly or via a third party service provider' where irp_id = 21
update IRP set validation_approach = 'If a prepaid card program existsDiscuss with management the volume of prepaid cards issued directly or via a third party service provider.' where irp_id = 22
update IRP set validation_approach = 'If the credit union originates ACH transactions, discuss with management if they have third party payment senders or nested third party sendersAsk management for the daily volume of debits and credits originated.' where irp_id = 25
update IRP set validation_approach = 'if the credit union originates wholesale payments (CHIPS), confirm with management whether the credit union originates wholesale payments and confirm the volume to total assets.' where irp_id = 26
update IRP set validation_approach = 'If the credit union performs domestic and international wires , confirm with management the various ways they receive wire requests and perform wire transfers.' where irp_id = 27
update IRP set validation_approach = 'If the credit union offers merchant processing, discuss with management if they offer merchants remote deposit capture and how many clients use it and to provide a list of daily transaction volume.' where irp_id = 28
update IRP set validation_approach = 'If the credit union offers global (international) remittances, discuss with management the gross daily transaction volume of global remittances' where irp_id = 29
update IRP set validation_approach = 'If the credit union provides merchant processing, discus with management the number of merchants for whom they provide this service.' where irp_id = 33
update IRP set validation_approach = 'Discuss with management the strategic and/or business plans for IT, list of recent and planned IT projects, and the information security and technology budget to identify potential mergers or acquisitions or divestitures and joint venturesDiscuss with management their intentions regarding mergers, acquisitions, divestitures or joint ventures.' where irp_id = 36
update IRP set validation_approach = 'Discuss with management the total number of employees including information technology and cybersecurity contractors' where irp_id = 37
update IRP set validation_approach = 'Discuss with management the location of credit union records; taking into consideration the number of sites, states, regions and countries in which they operate' where irp_id = 42
PRINT(N'Operation applied to 31 rows out of 31')

COMMIT TRANSACTION
GO
