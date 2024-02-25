CREATE TABLE scholarships
(
    id          BIGSERIAL INT PRIMARY KEY,
    name        VARCHAR(255) NOT NULL ,
    description VARCHAR(255) NOT NULL ,
    scholarship DECIMAL(10, 5) NOT NULL
);

CREATE TABLE scholarship_payments
(
    id             BIGSERIAL INT PRIMARY KEY,
    scholarship_id INT NOT NULL ,
    student_id     INT NOT NULL ,
    payment_date   DATE NOT NULL ,
    FOREIGN KEY (scholarship_id) REFERENCES scholarships (id)
);