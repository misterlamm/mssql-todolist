
CREATE DATABASE [TodoDB]


IF OBJECT_ID('dbo.Todos', 'U') IS NOT NULL
DROP TABLE dbo.Todos


CREATE TABLE dbo.Todos
(
   TodoListId        INT    NOT NULL   PRIMARY KEY, 
   Title      [NVARCHAR](255)  NOT NULL,
   Details   [NVARCHAR](100)  NULL,
   Priority   INT DEFAULT 1 NOT NULL,
   created_at   DATETIME NOT NULL,
   completed_at DATETIME  NULL
);


INSERT INTO Todos
   ([TodoListId],[Title],[Details],[Priority],[created_at],[completed_at])
VALUES
   ( 1, N'Task 1', N'', 5, '', NULL),
   ( 2, N'Task 2', N'Eat dunkaroos', 2, '20170618 10:34:09 AM', '20170618 12:00:20 PM'),
   ( 3, N'Task 3', N'Buy baby shampoo', 3, '20010507 02:11:33 PM', NULL),
   ( 4, N'Task 4', N'Feed fish', 4, '20030609 10:22:00 PM',  NULL),  
   ( 5, N'Task 5', N'Listen to sabbath on 78 speed, man', 1, '20120105 07:21:43 AM', '20170619 10:34:09 AM')   
  

SELECT COUNT(completed_at) as CompleteTasks FROM dbo.Todos;
SELECT e.TodoListId, e.Title, e.Details, e.Priority, e.created_at, e.completed_at
FROM dbo.Todos as e

UPDATE Todos SET Details = 'Get groceries', created_at = '20170618 10:34:09 AM'
 WHERE TodoListId = 1;




DELETE FROM todos WHERE completed_at IS NOT NULL;