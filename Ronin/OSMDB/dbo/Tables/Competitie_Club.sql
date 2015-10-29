CREATE TABLE [dbo].[Competitie_Club] (
    [ClubClub_ID]             INT NOT NULL,
    [CompetitieCompetitie_ID] INT NOT NULL,
    [Positie]                 INT NULL,
    PRIMARY KEY CLUSTERED ([ClubClub_ID] ASC, [CompetitieCompetitie_ID] ASC),
    CONSTRAINT [fk_ClubClubIDFKInCompetitie_Club] FOREIGN KEY ([ClubClub_ID]) REFERENCES [dbo].[Club] ([Club_ID]),
    CONSTRAINT [fk_CompetitieCompetitie_ID] FOREIGN KEY ([CompetitieCompetitie_ID]) REFERENCES [dbo].[Competitie] ([Competitie_ID])
);

