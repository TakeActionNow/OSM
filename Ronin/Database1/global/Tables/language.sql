CREATE TABLE [global].[language] (
    [language_id]    INT            IDENTITY (1, 1) NOT NULL,
    [language_value] NVARCHAR (100) NULL,
    [create_date]    DATETIME       NULL,
    [modify_date]    DATETIME       NULL,
    [delete_date]    DATETIME       NULL,
    PRIMARY KEY CLUSTERED ([language_id] ASC)
);

