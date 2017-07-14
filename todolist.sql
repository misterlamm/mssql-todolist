CREATE TABLE List
(
ListID int identity primary key,
UserID int not null,
ListName varchar(50) not null
)

CREATE TABLE TaskList
(
TaskListID int identity primary key,
ListID int not null,
TaskName varchar(50) not null,
SortOrder int not null
)