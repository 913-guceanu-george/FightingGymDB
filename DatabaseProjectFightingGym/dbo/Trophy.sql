CREATE TABLE [dbo].[Trophy] (
    [tid]   INT IDENTITY (1, 1) NOT NULL,
    [stid]  INT NULL,
    [place] INT NULL,
    PRIMARY KEY CLUSTERED ([tid] ASC),
    CONSTRAINT [FK_Trophy] FOREIGN KEY ([stid]) REFERENCES [dbo].[Student] ([stid])
);


GO

