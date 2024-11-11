CREATE TABLE users (
    id INT PRIMARY KEY,
    username TEXT,
    password TEXT,
    salt TEXT
);

CREATE TABLE persona (
    id INT PRIMARY KEY,
    name TEXT,
    description TEXT,
    image BYTEA
);

CREATE TABLE user_personas (
    user_id INT,
    persona_id INT,
    is_favorite BOOL,
    first_access_date DATE,
    PRIMARY KEY (user_id, persona_id),
    FOREIGN KEY (user_id) REFERENCES users(id),
    FOREIGN KEY (persona_id) REFERENCES persona(id)
);

