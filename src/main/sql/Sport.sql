create database SportFlow;

CREATE TABLE Users (
    idUser INT PRIMARY KEY AUTO_INCREMENT,
    fullName VARCHAR(50) NOT NULL,
    email VARCHAR(50) NOT NULL,
    password VARCHAR(20) NOT NULL,
    role VARCHAR(25)
);

CREATE TABLE Members (
    idMem INT PRIMARY KEY, 
    dateOfBirth DATE NOT NULL,
    sportPratique VARCHAR(100) NOT NULL,
    FOREIGN KEY (idMem) REFERENCES Users (idUser) ON DELETE CASCADE
);

CREATE TABLE Coachs (
    idCoach INT PRIMARY KEY, 
    speciality VARCHAR(50),
    FOREIGN KEY (idCoach) REFERENCES Users (idUser) ON DELETE CASCADE
);


CREATE TABLE SeanceDentraînement(
    idSeance INT PRIMARY KEY AUTO_INCREMENT,
    dateSeance DATE NOT NULL,
    heure VARCHAR(10) NOT NULL,
    idCoach INT,
    idMem INT, 
    FOREIGN KEY (idCoach) REFERENCES Coachs (idCoach) ON DELETE CASCADE,
    FOREIGN KEY (idMem) REFERENCES Members (idMem) ON DELETE CASCADE
);
