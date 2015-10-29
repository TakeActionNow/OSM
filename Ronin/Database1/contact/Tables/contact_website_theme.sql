CREATE TABLE [contact].[contact_website_theme] (
    [contact_website_theme_id] INT IDENTITY (1, 1) NOT NULL,
    [contact_service_role_id]  INT NOT NULL,
    [website_theme_id]         INT NOT NULL,
    PRIMARY KEY CLUSTERED ([contact_website_theme_id] ASC),
    CONSTRAINT [FK_contact_website_theme_contact_service_role_rel] FOREIGN KEY ([contact_service_role_id]) REFERENCES [service].[contact_service_role_rel] ([contact_service_role_id]),
    CONSTRAINT [FK_contact_website_theme_website_theme] FOREIGN KEY ([website_theme_id]) REFERENCES [global].[website_theme] ([website_theme_id])
);

