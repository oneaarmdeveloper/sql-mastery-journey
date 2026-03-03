-- Day 2: Understanding Databases
-- March3, 2026

-- SQL stands for Structured QWuery Language
-- It is the language used to talk to a Database

-- The 4 Major functions one can execute in SQL is called CRUD. CRUD stands for
-- CREATE = Create new Tables /add new data
-- READ = Find and Display data (READ)
-- UPDATE = Change existing data
-- DELETE = Remove Data


-- Enable Foreign Keys (SQLite requires this!)
PRAGMA foreign_keys = ON;

-- CREATE TABLES
CREATE TABLE IF NOT EXISTS Books (
    BookID          INTEGER PRIMARY KEY AUTOINCREMENT,
    Title           TEXT    NOT NULL,
    Author          TEXT    NOT NULL,
    PublicationYear TEXT,
    Price           REAL,
    Genre           TEXT
);

CREATE TABLE IF NOT EXISTS Members (
    MemberID    INTEGER PRIMARY KEY AUTOINCREMENT,
    FirstName   TEXT    NOT NULL,
    LastName    TEXT    NOT NULL,
    Email       TEXT    UNIQUE,
    PhoneNumber TEXT,
    JoinDate    TEXT    DEFAULT (DATE('now'))
);

CREATE TABLE IF NOT EXISTS Loans (
    LoanID   INTEGER PRIMARY KEY AUTOINCREMENT,
    BookID   INTEGER NOT NULL,
    MemberID INTEGER NOT NULL,
    LoanDate TEXT    DEFAULT (DATE('now')),
    FOREIGN KEY (BookID)   REFERENCES Books(BookID),
    FOREIGN KEY (MemberID) REFERENCES Members(MemberID)
);

-- INSERT DATA
INSERT INTO Books (Title, Author, PublicationYear, Price, Genre) VALUES
('The Great Gatsby', 'F. Scott Fitzgerald', '1925', 10.99, 'Fiction'),
('Clean Code',       'Robert C. Martin',    '2008', 45.50, 'Technology');

INSERT INTO Members (FirstName, LastName, Email, PhoneNumber, JoinDate) VALUES
('John', 'Doe', 'john.doe@example.com', '555-0101', '2026-01-15');

INSERT INTO Loans (BookID, MemberID, LoanDate) VALUES
(1, 1, '2026-03-01');

-- VIEW DATA
SELECT * FROM Books;
SELECT * FROM Members;
SELECT * FROM Loans;


