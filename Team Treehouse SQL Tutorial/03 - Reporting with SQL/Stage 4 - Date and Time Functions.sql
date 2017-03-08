SQL Playground - Stage 4: Practice

-- Find all loans that are overdue.

SELECT * FROM loans WHERE returned_on IS NULL AND return_by <= DATE('now');

-- Find all loans that are due back this week.

SELECT * FROM loans WHERE return_by BETWEEN DATE('now') AND DATE('now', '+7 days');

-- Format dates in all the loans table in the UK format without the year. For example, April 1st is 01/04.

SELECT id, book_id, patron_id, STRFTIME('%d/%m', loaned_on), STRFTIME('%d/%m', return_by), STRFTIME('%d/%m', returned_on) FROM loans;