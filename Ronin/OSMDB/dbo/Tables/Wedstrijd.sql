CREATE TABLE [dbo].[Wedstrijd] (
    [Wedstrijd_ID]            INT      IDENTITY (1, 1) NOT NULL,
    [ThuisClub_ID]            INT      NOT NULL,
    [UitClub_ID]              INT      NOT NULL,
    [CompetitieCompetitie_ID] INT      NOT NULL,
    [Thuis_Score]             SMALLINT NULL,
    [Uit_Score]               SMALLINT NULL,
    PRIMARY KEY CLUSTERED ([Wedstrijd_ID] ASC),
    CONSTRAINT [fk_CompetitieFKInWedstrijd] FOREIGN KEY ([CompetitieCompetitie_ID]) REFERENCES [dbo].[Competitie] ([Competitie_ID])
);

