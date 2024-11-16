CREATE TABLE users (
    id SERIAL PRIMARY KEY, 
    username TEXT UNIQUE NOT NULL, 
    password TEXT NOT NULL,
    salt TEXT NOT NULL
);

CREATE TABLE persona (
    id SERIAL PRIMARY KEY, 
    name TEXT NOT NULL,
    description TEXT,
    image BYTEA
);

CREATE TABLE user_personas (
    user_id INT NOT NULL,
    persona_id INT NOT NULL,
    is_favorite BOOL,
    first_access_date DATE,
    PRIMARY KEY (user_id, persona_id),
    FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE,
    FOREIGN KEY (persona_id) REFERENCES persona(id) ON DELETE CASCADE
);

