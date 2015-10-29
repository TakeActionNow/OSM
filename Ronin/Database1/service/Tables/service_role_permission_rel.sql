CREATE TABLE [service].[service_role_permission_rel] (
    [service_role_permission_id] INT IDENTITY (1, 1) NOT NULL,
    [contact_service_role_id]    INT NOT NULL,
    [service_role_id]            INT NOT NULL,
    [permission_id]              INT NOT NULL,
    CONSTRAINT [PK_service_role_permission_rel] PRIMARY KEY CLUSTERED ([service_role_permission_id] ASC) WITH (FILLFACTOR = 90),
    CONSTRAINT [FK_service_role_permission_rel_contact_service_role_rel] FOREIGN KEY ([contact_service_role_id]) REFERENCES [service].[contact_service_role_rel] ([contact_service_role_id]),
    CONSTRAINT [FK_service_role_permission_rel_permission] FOREIGN KEY ([permission_id]) REFERENCES [service].[permission] ([permission_id]),
    CONSTRAINT [FK_service_role_permission_rel_service_role_rel] FOREIGN KEY ([service_role_id]) REFERENCES [service].[service_role_rel] ([service_role_id])
);

