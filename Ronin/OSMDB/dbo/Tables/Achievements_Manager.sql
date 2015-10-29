CREATE TABLE [dbo].[Achievements_Manager] (
    [ManagerManager_ID]           INT NOT NULL,
    [AchievementsAchievements_ID] INT NOT NULL,
    [Voortgang]                   INT NULL,
    [Behaald]                     BIT NULL,
    PRIMARY KEY CLUSTERED ([ManagerManager_ID] ASC, [AchievementsAchievements_ID] ASC),
    CONSTRAINT [fk_AchievementsAchievements_ID] FOREIGN KEY ([AchievementsAchievements_ID]) REFERENCES [dbo].[Achievements] ([Achievement_ID]),
    CONSTRAINT [fk_ManagerFKInAchievements_Manager] FOREIGN KEY ([ManagerManager_ID]) REFERENCES [dbo].[Manager] ([Manager_ID])
);

