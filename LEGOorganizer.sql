CREATE TABLE Users (
    user_id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50),
    password VARCHAR(255),
    email VARCHAR(100),
    role ENUM('Collector', 'Admin')
);

CREATE TABLE Themes (
    theme_id INT AUTO_INCREMENT PRIMARY KEY,
    theme_name VARCHAR(50)
);

CREATE TABLE Sets (
    set_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    description TEXT,
    theme_id INT,
    piece_count INT,
    image_url VARCHAR(255),
    owner_id INT,
    FOREIGN KEY (theme_id) REFERENCES Themes(theme_id),
    FOREIGN KEY (owner_id) REFERENCES Users(user_id)
);

CREATE TABLE Images (
    image_id INT AUTO_INCREMENT PRIMARY KEY,
    set_id INT,
    image_url VARCHAR(255),
    FOREIGN KEY (set_id) REFERENCES Sets(set_id)
);
