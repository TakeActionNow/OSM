CREATE TABLE [dbo].[Land] (
    [Land_Code] INT           NOT NULL,
    [Naam]      VARCHAR (255) NULL,
    [Continent] VARCHAR (255) NULL,
    [Vlag]      IMAGE         NULL,
    PRIMARY KEY CLUSTERED ([Land_Code] ASC)
);

