-- DAY 1: First SQL File
-- Date : March 2, 2026
-- Topic: getting started


-- Concept: Database creation, SQL comments, USE statement

-- In sql lines that start with -- are COMMENTS

--This is simply a test query



CREATE DATABASE IF NOT EXISTS urbanbite;

USE urbanbite;

-- Verify creation
SHOW DATABASES;


--SELECT is used to Query Database , it is the primary command for the Data Query Language, which allows us to extract information from the database

SELECT 'Hello, SQL world!' AS my_first_query;

SELECT 1 + 1 AS math_result;

SELECT 'I am learning SQL' AS motivation;


