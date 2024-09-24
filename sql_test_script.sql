3. SQL Commands
Insert Data
sql
Copy code
-- Insert Authors
INSERT INTO Authors (AuthorID, Name, Bio) VALUES (1, 'Jane Austen', 'English novelist known for her six major novels.');
INSERT INTO Authors (AuthorID, Name, Bio) VALUES (2, 'Mark Twain', 'American writer known for his novels, including Adventures of Huckleberry Finn.');

-- Insert Books
INSERT INTO Books (BookID, Title, AuthorID) VALUES (1, 'Pride and Prejudice', 1);
INSERT INTO Books (BookID, Title, AuthorID) VALUES (2, 'Adventures of Huckleberry Finn', 2);

-- Insert Members
INSERT INTO Members (MemberID, Name, MembershipDate) VALUES (1, 'Alice', TO_DATE('2023-01-01', 'YYYY-MM-DD'));
INSERT INTO Members (MemberID, Name, MembershipDate) VALUES (2, 'Bob', TO_DATE('2023-02-01', 'YYYY-MM-DD'));

-- Insert Loans
INSERT INTO Loans (LoanID, BookID, MemberID, LoanDate, ReturnDate) VALUES (1, 1, 1, TO_DATE('2023-09-01', 'YYYY-MM-DD'), NULL);
Update Data
sql
Copy code
-- Update a Member's Name
UPDATE Members SET Name = 'Alice Smith' WHERE MemberID = 1;
Delete Data
sql
Copy code
-- Delete a Loan
DELETE FROM Loans WHERE LoanID = 1;
Perform Joins
sql
Copy code
-- Retrieve all Loans with Member and Book details
SELECT 
    l.LoanID,
    m.Name AS MemberName,
    b.Title AS BookTitle,
    l.LoanDate
FROM 
    Loans l
JOIN 
    Members m ON l.MemberID = m.MemberID
JOIN 
    Books b ON l.BookID = b.BookID;
Using DDL, DML, DCL, and TCL Operations
DDL: Creating tables as shown above.
DML: INSERT, UPDATE, DELETE operations.
DCL: Granting privileges (e.g., GRANT SELECT ON Books TO some_user;).
TCL: Committing changes (e.g., COMMIT;).