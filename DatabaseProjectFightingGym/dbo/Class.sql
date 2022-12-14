CREATE TABLE [dbo].[Class] (
    [cid]              INT IDENTITY (1, 1) NOT NULL,
    [years_of_exp_req] INT NOT NULL,
    [tid]              INT NOT NULL,
    [class_name]       VARCHAR(50),
    PRIMARY KEY CLUSTERED ([cid] ASC),
    CONSTRAINT [FK_Class] FOREIGN KEY ([tid]) REFERENCES [dbo].[Teacher] ([tid])
);


GO