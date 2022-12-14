CREATE TABLE [dbo].[Teacher]
(
    [tid] INT IDENTITY (1, 1) NOT NULL,
    [full_name] VARCHAR (50) NOT NULL,
    [diploma] BINARY NULL,
    [studid] INT NULL,
    PRIMARY KEY CLUSTERED ([tid] ASC),
    CONSTRAINT [FK_Teacher] FOREIGN KEY ([studid]) REFERENCES [dbo].[Student]([stid])
);

GO