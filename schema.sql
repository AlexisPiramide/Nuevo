CREATE TABLE localidad (
    municipio VARCHAR(50),
    localidad VARCHAR(50),
    cpostal INTEGER PRIMARY KEY UNIQUE
);
CREATE TYPE cardinales AS ENUM ('Norte', 'Sur', 'Este', 'Oeste', 'Noreste', 'Noroeste', 'Sureste', 'Suroeste');
CREATE TABLE tiempo (
    cpostal INTEGER,
    dia DATE,
    hora TIME,
    temp NUMERIC(5,2),
    humedad NUMERIC(5,2),
    viento NUMERIC(5,2),
    dirviento cardinales,
    FOREIGN KEY (cpostal) REFERENCES localidad(cpostal)
);


INSERT INTO localidad VALUES 
    ('Madrid', 'Madrid', 28001),
    ('Huesca', 'Huesca', 22001),
    ('Sabiñanigo', 'Huesca', 22600),
    ('Jaca', 'Huesca', 22700),
    ('Zaragoza', 'Zaragoza', 50001),
    ('Zaragoza', 'Zuera', 50800),
    ('Zaragoza', 'Calatayud', 50300),
    ('Teruel', 'Teruel', 44001),
    ('Teruel', 'Alcañiz', 44600),
    ('Barcelona', 'Barcelona', 08001);

INSERT INTO tiempo VALUES 
    (28001, '2020-01-01', '00:00:00', 10.5, 55.3, 8.2, 'Noroeste'),
    (28001, '2020-01-01', '01:00:00', 12.8, 50.6, 12.1, 'Sureste'),
    (28001, '2020-01-01', '02:00:00', 11.2, 52.4, 10.0, 'Norte'),
    (28001, '2020-01-01', '03:00:00', 13.4, 53.8, 9.7, 'Suroeste'),
    (28001, '2020-01-01', '04:00:00', 14.9, 51.2, 13.5, 'Este'),
    (28001, '2020-01-01', '05:00:00', 13.1, 49.5, 14.8, 'Oeste'),
    (28001, '2020-01-01', '06:00:00', 15.0, 54.1, 11.3, 'Noreste'),
    (28001, '2020-01-01', '07:00:00', 16.2, 57.0, 9.2, 'Sur'),
    (28001, '2020-01-01', '08:00:00', 17.8, 53.6, 10.6, 'Suroeste'),
    (28001, '2020-01-01', '09:00:00', 19.4, 55.8, 12.7, 'Sureste'),
    (28001, '2020-01-01', '10:00:00', 20.1, 59.0, 15.3, 'Norte'),
    (28001, '2020-01-01', '11:00:00', 21.3, 61.5, 8.9, 'Noroeste'),
    (28001, '2020-01-01', '12:00:00', 22.7, 60.2, 14.1, 'Este'),
    (28001, '2020-01-01', '13:00:00', 23.5, 62.7, 13.4, 'Sur'),
    (28001, '2020-01-01', '14:00:00', 24.6, 63.4, 10.8, 'Noreste'),
    (28001, '2020-01-01', '15:00:00', 25.9, 65.0, 12.2, 'Oeste'),
    (28001, '2020-01-01', '16:00:00', 26.8, 66.5, 11.5, 'Sureste'),
    (28001, '2020-01-01', '17:00:00', 27.4, 64.8, 13.8, 'Noroeste'),
    (28001, '2020-01-01', '18:00:00', 28.1, 68.2, 9.1, 'Suroeste'),
    (28001, '2020-01-01', '19:00:00', 29.6, 67.0, 10.9, 'Norte'),
    (28001, '2020-01-01', '20:00:00', 30.2, 70.5, 15.0, 'Sur'),
    (28001, '2020-01-01', '21:00:00', 31.1, 71.8, 14.6, 'Este'),
    (28001, '2020-01-01', '22:00:00', 32.5, 69.3, 13.1, 'Sureste'),
    (28001, '2020-01-01', '23:00:00', 33.7, 73.2, 12.5, 'Oeste');


