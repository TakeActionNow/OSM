CREATE TABLE [global].[language_translation_rel] (
    [language_translation_id] INT      IDENTITY (1, 1) NOT NULL,
    [translation_id]          INT      NULL,
    [language_id]             INT      NULL,
    [create_date]             DATETIME NULL,
    [modify_date]             DATETIME NULL,
    [delete_date]             DATETIME NULL,
    PRIMARY KEY CLUSTERED ([language_translation_id] ASC),
    CONSTRAINT [FK_language_translation_rel_language] FOREIGN KEY ([language_id]) REFERENCES [global].[language] ([language_id]),
    CONSTRAINT [FK_language_translation_rel_translation] FOREIGN KEY ([translation_id]) REFERENCES [global].[translation] ([translation_id])
);

