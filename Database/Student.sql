CREATE TABLE [dbo].[Student]
(
    [stid] INT IDENTITY (1, 1) NOT NULL,
    [full_name] VARCHAR (50) NOT NULL,
    [years_of_exp] INT NOT NULL,
    PRIMARY KEY CLUSTERED ([stid] ASC)
);


GO

