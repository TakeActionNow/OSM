CREATE TABLE [service].[service_website_theme_rel] (
    [service_website_theme_id] INT      IDENTITY (1, 1) NOT NULL,
    [service_id]               INT      NOT NULL,
    [website_theme_id]         INT      NOT NULL,
    [create_date]              DATETIME NULL,
    [modify_date]              DATETIME NULL,
    [delete_date]              DATETIME NULL,
    PRIMARY KEY CLUSTERED ([service_website_theme_id] ASC),
    CONSTRAINT [FK_service_website_theme_rel_service] FOREIGN KEY ([service_id]) REFERENCES [service].[service] ([service_id]),
    CONSTRAINT [FK_service_website_theme_rel_website_theme] FOREIGN KEY ([website_theme_id]) REFERENCES [global].[website_theme] ([website_theme_id])
);

