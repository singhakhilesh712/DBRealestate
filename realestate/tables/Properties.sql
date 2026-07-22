CREATE TABLE Properties (
    property_id INT AUTO_INCREMENT PRIMARY KEY,
    address VARCHAR(255) NOT NULL,
    city VARCHAR(100) NOT NULL,
    state VARCHAR(50) NOT NULL,
    zip_code VARCHAR(10) NOT NULL,
    price DECIMAL(12,2) NOT NULL,
    type ENUM('Apartment', 'House', 'Commercial', 'Land') NOT NULL,
    status ENUM('Available', 'Sold', 'Rented') NOT NULL,
    agent_id INT,
    FOREIGN KEY (agent_id) REFERENCES Agents(agent_id) ON DELETE SET NULL
);
