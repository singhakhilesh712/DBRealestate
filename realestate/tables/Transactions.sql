CREATE TABLE Transactions (
    transaction_id INT AUTO_INCREMENT PRIMARY KEY,
    property_id INT,
    client_id INT,
    agent_id INT,
    sale_price DECIMAL(12,2) NOT NULL,
    transaction_type ENUM('Sale', 'Rent') NOT NULL,
    transaction_date DATE NOT NULL,
    FOREIGN KEY (property_id) REFERENCES Properties(property_id) ON DELETE CASCADE,
    FOREIGN KEY (client_id) REFERENCES Clients(client_id) ON DELETE CASCADE,
    FOREIGN KEY (agent_id) REFERENCES Agents(agent_id) ON DELETE SET NULL
);
