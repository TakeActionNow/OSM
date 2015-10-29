CREATE TABLE [global].[translation] (
    [translation_id]    INT            IDENTITY (1, 1) NOT NULL,
    [language_id]       INT            NULL,
    [translation_value] NVARCHAR (100) NULL,
    PRIMARY KEY CLUSTERED ([translation_id] ASC),
    CONSTRAINT [FK_translation_language] FOREIGN KEY ([language_id]) REFERENCES [global].[language] ([language_id])
);

