CREATE TABLE Reviews (
    review_id INT AUTO_INCREMENT PRIMARY KEY,
    client_id INT,
    property_id INT,
    rating INT CHECK (rating BETWEEN 1 AND 5),
    review_text TEXT,
    review_date DATE NOT NULL,
    FOREIGN KEY (client_id) REFERENCES Clients(client_id) ON DELETE CASCADE,
    FOREIGN KEY (property_id) REFERENCES Properties(property_id) ON DELETE CASCADE
);
