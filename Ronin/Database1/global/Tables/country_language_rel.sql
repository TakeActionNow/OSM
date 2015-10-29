CREATE TABLE [global].[country_language_rel] (
    [country_language_id] INT      IDENTITY (1, 1) NOT NULL,
    [country_id]          INT      NOT NULL,
    [language_id]         INT      NOT NULL,
    [create_date]         DATETIME NULL,
    [modify_date]         DATETIME NULL,
    [delete_date]         DATETIME NULL,
    PRIMARY KEY CLUSTERED ([country_language_id] ASC),
    CONSTRAINT [FK_country_language_rel_country] FOREIGN KEY ([country_id]) REFERENCES [global].[country] ([country_id]),
    CONSTRAINT [FK_country_language_rel_language] FOREIGN KEY ([language_id]) REFERENCES [global].[language] ([language_id])
);

