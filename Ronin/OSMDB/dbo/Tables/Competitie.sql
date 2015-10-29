CREATE TABLE [dbo].[Competitie] (
    [Competitie_ID]    INT           IDENTITY (1, 1) NOT NULL,
    [Naam]             VARCHAR (255) NULL,
    [LandLand_Code]    INT           NOT NULL,
    [ManagerManagerID] INT           NOT NULL,
    PRIMARY KEY CLUSTERED ([Competitie_ID] ASC),
    CONSTRAINT [fk_LandCodeInCompetitie] FOREIGN KEY ([LandLand_Code]) REFERENCES [dbo].[Land] ([Land_Code])
);

