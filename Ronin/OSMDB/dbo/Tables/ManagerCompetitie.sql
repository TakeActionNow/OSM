CREATE TABLE [dbo].[ManagerCompetitie] (
    [CompetitieCompetitie_ID] INT NOT NULL,
    [ManagerManager_ID]       INT NOT NULL,
    [ClubClub_ID]             INT NOT NULL,
    PRIMARY KEY CLUSTERED ([CompetitieCompetitie_ID] ASC, [ManagerManager_ID] ASC, [ClubClub_ID] ASC),
    CONSTRAINT [ClubClub_IDFKInClub] FOREIGN KEY ([ClubClub_ID]) REFERENCES [dbo].[Club] ([Club_ID]),
    CONSTRAINT [CompetitieCompetitie_IDFKInManagerCompetitie] FOREIGN KEY ([CompetitieCompetitie_ID]) REFERENCES [dbo].[Competitie] ([Competitie_ID]),
    CONSTRAINT [ManagerManager_IDFKInManagerCompetitie] FOREIGN KEY ([ManagerManager_ID]) REFERENCES [dbo].[Manager] ([Manager_ID])
);

