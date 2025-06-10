-- Datenbank erstellen
CREATE DATABASE ShopDB;
USE ShopDB;

-- Tabelle: Kunde
CREATE TABLE Kunde (
    KundeID INT PRIMARY KEY,
    Name VARCHAR(50),
    Stadt VARCHAR(50)
);

-- Tabelle: Produkt
CREATE TABLE Produkt (
    ProduktID INT PRIMARY KEY,
    Bezeichnung VARCHAR(50),
    Preis DECIMAL(10,2)
);

-- Tabelle: Bestellung (Verknüpfungstabelle)
CREATE TABLE Bestellung (
    BestellungID INT PRIMARY KEY,
    KundeID INT,
    ProduktID INT,
    Bestelldatum DATE,
    FOREIGN KEY (KundeID) REFERENCES Kunde(KundeID),
    FOREIGN KEY (ProduktID) REFERENCES Produkt(ProduktID)
);

-- Beispiel-Daten einfügen
INSERT INTO Kunde VALUES (1, 'Anna Meier', 'Zürich');
INSERT INTO Kunde VALUES (2, 'Luca Frei', 'Bern');

INSERT INTO Produkt VALUES (101, 'Laptop', 1200.00);
INSERT INTO Produkt VALUES (102, 'Maus', 25.50);
INSERT INTO Produkt VALUES (103, 'Monitor', 230.00);

INSERT INTO Bestellung VALUES (1001, 1, 101, '2025-06-01');
INSERT INTO Bestellung VALUES (1002, 1, 102, '2025-06-02');
INSERT INTO Bestellung VALUES (1003, 2, 103, '2025-06-03');

-- Schritt 1: Datenbank erstellen
CREATE DATABASE ShopDB;
GO

-- Schritt 2: Zur Datenbank wechseln
USE ShopDB;
GO

-- Schritt 3: Tabellen erstellen
CREATE TABLE Kunde (
    KundeID INT PRIMARY KEY,
    Name VARCHAR(50),
    Stadt VARCHAR(50)
);

CREATE TABLE Produkt (
    ProduktID INT PRIMARY KEY,
    Bezeichnung VARCHAR(50),
    Preis DECIMAL(10,2)
);

CREATE TABLE Bestellung (
    BestellungID INT PRIMARY KEY,
    KundeID INT,
    ProduktID INT,
    Bestelldatum DATE,
    FOREIGN KEY (KundeID) REFERENCES Kunde(KundeID),
    FOREIGN KEY (ProduktID) REFERENCES Produkt(ProduktID)
);
