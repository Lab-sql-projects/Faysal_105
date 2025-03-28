INSERT INTO Customers VALUES (1, 'Alice Johnson', 'alice@example.com', '1234567890', '123 Street, City');
INSERT INTO Customers VALUES (2, 'Bob Smith', 'bob@example.com', '0987654321', '456 Avenue, City');
INSERT INTO Customers VALUES (3, 'Charlie Brown', 'charlie@example.com', '1122334455', '789 Road, City');

INSERT INTO Accounts VALUES (101, 1, 'Savings', 5000.00);
INSERT INTO Accounts VALUES (102, 2, 'Checking', 1500.00);
INSERT INTO Accounts VALUES (103, 3, 'Savings', 3000.00);

INSERT INTO Transactions VALUES (1, 101, 1000.00, 'deposit', NOW());
INSERT INTO Transactions VALUES (2, 102, 500.00, 'withdrawal', NOW());
INSERT INTO Transactions VALUES (3, 103, 700.00, 'deposit', NOW());

INSERT INTO Employees VALUES (1, 'David Williams', 'Manager', 75000.00);
INSERT INTO Employees VALUES (2, 'Emma Watson', 'Clerk', 45000.00);
INSERT INTO Employees VALUES (3, 'Franklin Lee', 'Cashier', 35000.00);
