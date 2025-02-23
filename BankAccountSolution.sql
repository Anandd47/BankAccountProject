-- Create a table for storing bank account details
CREATE TABLE BankAccounts (
    AccountID INT PRIMARY KEY AUTO_INCREMENT,
    AccountHolder VARCHAR(100) NOT NULL,
    Balance DECIMAL(10, 2) DEFAULT 0.00
);

-- Insert a sample bank account
INSERT INTO BankAccounts (AccountHolder, Balance)
VALUES ('Atul Anand', 1000.00);

-- Simulate a deposit transaction
UPDATE BankAccounts
SET Balance = Balance + 500.00
WHERE AccountHolder = 'Atul Anand';

-- Simulate a withdrawal transaction
UPDATE BankAccounts
SET Balance = Balance - 200.00
WHERE AccountHolder = 'Atul Anand';

-- Retrieve the current balance
SELECT AccountHolder, Balance
FROM BankAccounts;
