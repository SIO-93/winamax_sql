CREATE TABLE users (
    id INT PRIMARY KEY,
    name VARCHAR(255),
    password VARCHAR(255)
);



CREATE TABLE exams (
    id INT PRIMARY KEY,
    matiere VARCHAR(255),
    date DATE,
    sujet VARCHAR(255)
);


CREATE TABLE bets (
    id INT PRIMARY KEY,
    exam INT,
    user_1 INT,
    user_2 INT,
    amount INT,
    FOREIGN KEY (exam) REFERENCES exams(id),
    FOREIGN KEY (user_1) REFERENCES users(id),
    FOREIGN KEY (user_2) REFERENCES users(id)
);


CREATE TABLE grades (
    id INT PRIMARY KEY,
    exam INT,
    user INT,
    value FLOAT,
    FOREIGN KEY (exam) REFERENCES exams(id),
    FOREIGN KEY (user) REFERENCES users(id)
);


CREATE TABLE account (
    id INT PRIMARY KEY,
    user INT,
    value INT,
    FOREIGN KEY (user) REFERENCES users(id)
);

