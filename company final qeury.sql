CREATE TABLE company (
    company_id INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    address VARCHAR(255),
    city VARCHAR(100),
    state VARCHAR(50),
    postal_code VARCHAR(20),
    phone_number VARCHAR(20),
    email VARCHAR(100),
    website VARCHAR(100),
    industry_id INT,
    country_id INT,
    FOREIGN KEY (industry_id) REFERENCES industry(industry_id),
    FOREIGN KEY (country_id) REFERENCES country(country_id)
);

select * from company

CREATE TABLE industry (
    industry_id SERIAL PRIMARY KEY,
    name VARCHAR(255),
    sector VARCHAR(255),
    employee_name TEXT
);

select * from industry

CREATE TABLE country (
    country_id SERIAL PRIMARY KEY,
    president VARCHAR(200),
    country_name VARCHAR(255) NOT NULL,
    continent VARCHAR(100)
);
select * from country


INSERT INTO industry (industry_id, name, sector, employee_name) VALUES
(1, 'Technology', 'Information Technology', 'x man'),
(2, 'Healthcare', 'Medical', 'ronny singh'),
(3, 'Finance', 'Banking', 'iron man'),
(4, 'Education', 'Academic', 'red hulk'),
(5, 'Manufacturing', 'Industrial', 'goku'),
(6, 'automoblie', 'cars', 'captain america'),
(7, 'Entertainment', 'Media', 'gojo sataru');

select * from industry


INSERT INTO country (country_id, president, country_name, continent) VALUES
(1, 'modi', 'india', 'gujrat'),
(2, 'elon musk', 'south africa', 'pretoria'),
(3, 'Justin Trudeau', 'Canada', 'North America'),
(4, 'Emmanuel Macron', 'France', 'Europe'),
(5, 'Angela Merkel', 'Germany', 'Europe'),
(6, 'Boris Johnson', 'United Kingdom', 'Europe'),
(7, 'Yoshihide Suga', 'Japan', 'Asia');

select * from country

INSERT INTO company (company_id, name, address, city, state, postal_code, phone_number, email, website, industry_id, country_id)
VALUES
(1, 'MSN', '123 Main St', 'Anytown', 'WB', '12345', '123-456-7890', 'info@companyA.com', 'www.companyA.com', 1, 1),
(2, 'NEULAND', '456 Broadway', 'Sometown', 'TS', '67890', '987-654-3210', 'info@companyB.com', 'www.companyB.com', 2, 2),
(3, 'DR. REDDY', '789 Oak St', 'Othertown', 'AP', '54321', '555-555-5555', 'info@companyC.com', 'www.companyC.com', 3, 3),
(4, 'COHANCE', '321 Elm St', 'Cityville', 'MH', '98765', '222-333-4444', 'info@companyD.com', 'www.companyD.com', 4, 4),
(5, 'AXIES', '456 Pine St', 'Villagetown', 'JH', '13579', '111-222-3333', 'info@companyE.com', 'www.companyE.com', 5, 5),
(6, 'CLIEANS LAB', '789 Maple St', 'Countrytown', 'NL', '24680', '444-555-6666', 'info@companyF.com', 'www.companyF.com', 6, 6),
(7, 'HECTOR', '159 Oak St', 'Towntown', 'TS', '97531', '777-888-9999', 'info@companyG.com', 'www.companyG.com', 7, 7);

select * from company