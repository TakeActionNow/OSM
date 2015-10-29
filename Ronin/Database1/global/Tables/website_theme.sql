CREATE TABLE [global].[website_theme] (
    [website_theme_id]    INT            IDENTITY (1, 1) NOT NULL,
    [website_theme_value] NVARCHAR (100) NOT NULL,
    [create_date]         DATETIME       NULL,
    [modify_date]         DATETIME       NULL,
    [delete_date]         DATETIME       NULL,
    PRIMARY KEY CLUSTERED ([website_theme_id] ASC)
);

