CREATE TABLE [dbo].[Materials] (
    [mid]   INT          IDENTITY (1, 1) NOT NULL,
    [mname] VARCHAR (15) NULL,
    [cid]   INT          NOT NULL,
    [price] INT          NULL,
    [quant] INT          NULL,
    PRIMARY KEY CLUSTERED ([mid] ASC),
    CONSTRAINT [FK_Materials] FOREIGN KEY ([cid]) REFERENCES [dbo].[Class] ([cid])
);


GO

