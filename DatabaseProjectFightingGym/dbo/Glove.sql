CREATE TABLE [dbo].[Glove]
(
    [gid] INT IDENTITY (1, 1) NOT NULL,
    [material] VARCHAR (50) NOT NULL,
    [stid] INT,
    PRIMARY KEY CLUSTERED ([gid] ASC),
    CONSTRAINT [FK_Glove] FOREIGN KEY ([stid]) REFERENCES [dbo].[Student] ([stid])
);


GO

