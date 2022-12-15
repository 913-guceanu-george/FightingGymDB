CREATE TABLE [dbo].[FightingMatch]
(
    [mtid] INT IDENTITY (1, 1) NOT NULL,
    [stid] INT NOT NULL,
    [match_date] VARCHAR (50) NULL,
    PRIMARY KEY CLUSTERED ([mtid] ASC),
    CONSTRAINT [FK_FightingMatch] FOREIGN KEY ([stid]) REFERENCES [dbo].[Student] ([stid])
);


GO

