DCDS Database Setup
====================

There are 2 main scripts to note, along with the sql files they import:

- create_db.sh: A script file that can be executed to create the database as of a certain version. This script 
	should be updated for each release to include any incremental change SQL script file that is required for the 
	corresponding DCDS version. The incremental change scripts should go into the 'changes' directory.

- create_data_dbs.sh: A script file that can be executed to create the following data related databases:
	- dcds_datalayers_postgis
	- dcds_datafeeds
	- dcds_shapefiles

- baseline.sql: Specifies the baseline schema. This is as of DCDS 6.0.

- baseline_data.sql: Specifies the baseline data for the DCDS database.

- baseline_datalayers.sql: Sets up the dynamic_kmz schema

- baseline_datafeeds.sql: Creates the default mdt schema and associated view in the dcds_datafeeds database.
	
Executing the 'create_db.sh' requires that database name and username parameters are passed in
	(e.g. "./create_db.sh integration dcds"). The script will create the database with the 
	specified name, create the baseline schema for that database, insert the baseline data for that database, 
	and will execute any of the SQL change scripts (as long as they have been added to the 'create_db.sh' script file).
	
Executing the 'create_data_dbs.sh' script requires a database name parameter (e.g. "./create_data_dbs.sh dcds"). This 
	parameter is used as a prefix for the data databases, e.g., dcds_datafeeds and dcds_shapefiles. This script also
	creates the default schema for the MDT table as required for using the Mobile Device Tracking functionality of DCDS.


DCDS System Setup
====================

There are 5 scripts that will help to set up a basic system

- /scripts/create_workspace.sh:
	(1) Database to create workspace on
	(2) A workspace name - this will appear as a button on the main page, for example "Incident"
	(3) A unique workspace ID - recommend starting with 1

- /scripts/create_system.sh:
	(1) Database to create the system on
	(2) Name of the system - this usually corresponds to the application's hostname. For instance, if the site is hosted at "dcds.ll.mit.edu", this system name would be "dcds"
	(3) A description of the system
	(4) A unique system ID - recommend starting with 1

- /scripts/create_org.sh:
	(1) Database to create org on
	(2) Name of the organization
	(3) County
	(4) State
	(5) Prefix
	(6) The orgtype ID - this will allow users to register with this organization. The IDs can be found in the orgtype table

- /scripts/create_default_user.sh: The password is set to TestPassword1!
	(1) Username
	(2) Organization Id (query org table)
	(3) Workspace Id (query workspace table)

- /scripts/create_default_folders.sh: Creates folders Maps, Data, Tracking, Weather, and Uploads for specified workspace.	
	(1) Name of database
	(2) Workspace ID to create folders under
	
These 2 scripts will add base layers and weather layers

	- /datalayers/maps/maps_layers.sh - NOTE: Places the layers in Workspace 1
		(1) Database to create layers on		

	- /datalayers/weather/weather_layers.sh
		(1) Database to create layers on
		(2) Workspace ID to place the layers in
		
		
