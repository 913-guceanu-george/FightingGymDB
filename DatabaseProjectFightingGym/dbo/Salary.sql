CREATE TABLE [dbo].[Salary] (
    [tid]    INT NOT NULL,
    [amount] INT NOT NULL,
    PRIMARY KEY CLUSTERED ([tid] ASC),
    CONSTRAINT [FK_Salary] FOREIGN KEY ([tid]) REFERENCES [dbo].[Teacher] ([tid])
);


GO

