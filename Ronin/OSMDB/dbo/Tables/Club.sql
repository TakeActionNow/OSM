CREATE TABLE [dbo].[Club] (
    [Club_ID]       INT           IDENTITY (1, 1) NOT NULL,
    [Naam]          VARCHAR (255) NULL,
    [Logo]          IMAGE         NULL,
    [Doelstelling]  SMALLINT      NULL,
    [LandLand_Code] INT           NOT NULL,
    PRIMARY KEY CLUSTERED ([Club_ID] ASC),
    CONSTRAINT [fk_LandCode] FOREIGN KEY ([LandLand_Code]) REFERENCES [dbo].[Land] ([Land_Code])
);

