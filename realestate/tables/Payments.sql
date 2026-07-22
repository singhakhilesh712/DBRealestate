CREATE TABLE Payments (
    payment_id INT AUTO_INCREMENT PRIMARY KEY,
    transaction_id INT,
    amount DECIMAL(12,2) NOT NULL,
    payment_date DATE NOT NULL,
    payment_method ENUM('Credit Card', 'Bank Transfer', 'Cash') NOT NULL,
    FOREIGN KEY (transaction_id) REFERENCES Transactions(transaction_id) ON DELETE CASCADE
);
