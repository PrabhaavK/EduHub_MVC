CREATE TABLE Users (
    UserId INT PRIMARY KEY IDENTITY,
    UserName NVARCHAR(100),
    Email NVARCHAR(100),
    PasswordHash NVARCHAR(100),
    Role NVARCHAR(50), -- 'Educator' or 'Student'
    ProfileImage NVARCHAR(255)
);

CREATE TABLE Courses (
    CourseId INT PRIMARY KEY IDENTITY,
    EducatorId INT,
    CourseTitle NVARCHAR(255),
    CourseDescription TEXT
);

CREATE TABLE Enquiries (
    EnquiryId INT PRIMARY KEY IDENTITY,
    UserId INT,
    CourseId INT,
    EnquiryText TEXT,
    EnquiryDate DATETIME
);

CREATE TABLE Enrollments (
    EnrollmentId INT PRIMARY KEY IDENTITY,
    UserId INT,
    CourseId INT,
    EnrollmentDate DATETIME
);

CREATE TABLE Feedback (
    FeedbackId INT PRIMARY KEY IDENTITY,
    UserId INT,
    CourseId INT,
    Rating INT,
    Comments TEXT,
    FeedbackDate DATETIME
);

CREATE TABLE Materials (
    MaterialId INT PRIMARY KEY IDENTITY,
    CourseId INT,
    MaterialTitle NVARCHAR(255),
    MaterialDescription TEXT,
    MaterialPath NVARCHAR(255),
    UploadDate DATETIME
);


INSERT INTO Users (UserName, Email, PasswordHash, Role, ProfileImage)
VALUES 
('Prabhav Khalya', 'prabhav.khalya@yash.com', 'hashedpassword1', 'Educator', 'prabhav.jpg'),
('Skashi', 'skashi@yash.com', 'hashedpassword2', 'Student', 'skashi.jpg'),
('Sarita', 'sarita@yash.com', 'hashedpassword3', 'Educator', 'sarita.jpg'),
('Ahana', 'ahana@yash.com', 'hashedpassword4', 'Student', 'ahana.jpg'),
('Rahul', 'rahul@yash.com', 'hashedpassword5', 'Student', 'rahul.jpg'),
('Satish', 'satish@yash.com', 'hashedpassword6', 'Educator', 'satish.jpg');



INSERT INTO Courses (EducatorId, CourseTitle, CourseDescription)
VALUES 
(1, 'Data Structures and Algorithms', 'An in-depth course on data structures and algorithms.'),
(3, 'Web Development Basics', 'Learn the basics of web development including HTML, CSS, and JavaScript.'),
(6, 'Machine Learning', 'Introduction to machine learning concepts and practical applications.');
