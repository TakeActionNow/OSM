CREATE TABLE [global].[country_translation_rel] (
    [country_translation_id] INT      IDENTITY (1, 1) NOT NULL,
    [translation_id]         INT      NOT NULL,
    [country_id]             INT      NOT NULL,
    [create_date]            DATETIME NULL,
    [modify_date]            DATETIME NULL,
    [delete_date]            DATETIME NULL,
    PRIMARY KEY CLUSTERED ([country_translation_id] ASC),
    CONSTRAINT [FK_country_translation_rel_country] FOREIGN KEY ([country_id]) REFERENCES [global].[country] ([country_id]),
    CONSTRAINT [FK_country_translation_rel_translation] FOREIGN KEY ([translation_id]) REFERENCES [global].[translation] ([translation_id])
);

