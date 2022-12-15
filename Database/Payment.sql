CREATE TABLE [dbo].[Payment]
(
    [stid] INT NOT NULL,
    [memebership] BINARY (1) NOT NULL,
    [daily] BINARY (1) NOT NULL,
    PRIMARY KEY CLUSTERED ([stid] ASC),
    CONSTRAINT [FK_Payment] FOREIGN KEY ([stid]) REFERENCES [dbo].[Student] ([stid])
);


GO

