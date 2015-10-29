CREATE TABLE [contact].[contact_background_rel] (
    [contact_background_id]   INT      IDENTITY (1, 1) NOT NULL,
    [contact_service_role_id] INT      NOT NULL,
    [background_id]           INT      NOT NULL,
    [modify_date]             DATETIME NULL,
    CONSTRAINT [PK_contact_background_rel] PRIMARY KEY CLUSTERED ([contact_background_id] ASC) WITH (FILLFACTOR = 90),
    CONSTRAINT [FK_contact_background_rel_background] FOREIGN KEY ([background_id]) REFERENCES [contact].[background] ([background_id]),
    CONSTRAINT [FK_contact_background_rel_contact_service_role_rel] FOREIGN KEY ([contact_service_role_id]) REFERENCES [service].[contact_service_role_rel] ([contact_service_role_id])
);

