CREATE TABLE [dbo].[Achievements] (
    [Achievement_ID] INT           NOT NULL,
    [Naam]           VARCHAR (255) NOT NULL,
    [Logo]           IMAGE         NULL,
    [Instructie]     VARCHAR (255) NULL,
    [Beloning]       INT           NULL,
    PRIMARY KEY CLUSTERED ([Achievement_ID] ASC)
);

