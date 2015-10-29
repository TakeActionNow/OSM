CREATE TABLE [service].[contact_service_role_rel] (
    [contact_service_role_id]         INT      IDENTITY (1, 1) NOT NULL,
    [contact_id]                      INT      NOT NULL,
    [service_id]                      INT      NOT NULL,
    [role_id]                         INT      NOT NULL,
    [avatar_id]                       INT      NULL,
    [is_current_role]                 BIT      CONSTRAINT [DF_contact_service_role_rel_is_current_role] DEFAULT ((1)) NOT NULL,
    [contact_service_role_status_id]  INT      NULL,
    [contact_service_role_start_date] DATE     NULL,
    [contact_service_role_end_date]   DATE     NULL,
    [create_date]                     DATETIME NULL,
    [modify_date]                     DATETIME NULL,
    [delete_date]                     DATETIME NULL,
    CONSTRAINT [PK_contact_service_role_rel] PRIMARY KEY CLUSTERED ([contact_service_role_id] ASC) WITH (FILLFACTOR = 90),
    CONSTRAINT [FK_contact_service_role_rel_contact] FOREIGN KEY ([contact_id]) REFERENCES [contact].[contact] ([contact_id]),
    CONSTRAINT [FK_contact_service_role_rel_contact_service_role_status] FOREIGN KEY ([contact_service_role_status_id]) REFERENCES [service].[contact_service_role_status] ([contact_service_role_status_id]),
    CONSTRAINT [FK_contact_service_role_rel_image] FOREIGN KEY ([avatar_id]) REFERENCES [media].[image] ([image_id]),
    CONSTRAINT [FK_contact_service_role_rel_role] FOREIGN KEY ([role_id]) REFERENCES [contact].[role] ([role_id]),
    CONSTRAINT [FK_contact_service_role_rel_service] FOREIGN KEY ([service_id]) REFERENCES [service].[service] ([service_id])
);

