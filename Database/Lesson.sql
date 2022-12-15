CREATE TABLE [dbo].[Lesson]
(
    [cid] INT NOT NULL,
    [stid] INT NOT NULL,
    PRIMARY KEY CLUSTERED ([cid] ASC, [stid] ASC),
    CONSTRAINT [FK_Lesson1] FOREIGN KEY ([cid]) REFERENCES [dbo].[Class] ([cid]),
    CONSTRAINT [FK_Lesson2] FOREIGN KEY ([stid]) REFERENCES [dbo].[Student] ([stid])
);


GO

