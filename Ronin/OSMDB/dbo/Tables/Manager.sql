CREATE TABLE [dbo].[Manager] (
    [Manager_ID]        INT           NOT NULL,
    [Username]          VARCHAR (255) NULL,
    [Password]          VARCHAR (255) NULL,
    [Email_adres]       VARCHAR (255) NULL,
    [Geslacht]          CHAR (1)      NULL,
    [Premium_dagen]     INT           NULL,
    [LandLand_Code]     VARCHAR (3)   NULL,
    [Ingeschreven]      DATE          NULL,
    [Laatst_Ingelogd]   ROWVERSION    NULL,
    [Platform]          CHAR (2)      NULL,
    [Site_Logins]       INT           NULL,
    [Profiel_Bezoekers] INT           NULL,
    PRIMARY KEY CLUSTERED ([Manager_ID] ASC)
);

