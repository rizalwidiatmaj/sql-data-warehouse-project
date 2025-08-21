/*
Create Databases and Schema

Script Purpose:
	This script creates a new database named 'DataWarehouse' after checking if it already exists.
	If the database exists, it is dropped and recreated. Additionally, the script sets up three schemas
	within databases: 'bronze', 'silver' and 'gold'

WARNING:
	Running this script will drop the entire 'data_warehouse' database if it exists.
	All data in the database will be permanently deleted. Proceed with caution
	and ensure you have proper backups before running this script.
*/

-- Drop database 'data_warehouse' if exists
drop database if exists data_warehouse;

-- Create Database 'data_warehouse'
create database data_warehouse;

-- \c DataWarehouse;

-- Create Bronze Schema
create schema if not exists bronze;

-- Create Silver Schema
create schema if not exists silver;

-- Create Gold / Public Schema
create schema if not exists gold;
