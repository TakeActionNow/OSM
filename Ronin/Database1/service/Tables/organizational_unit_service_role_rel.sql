CREATE TABLE [service].[organizational_unit_service_role_rel] (
    [organizational_unit_service_role_id] INT IDENTITY (1, 1) NOT NULL,
    [organizational_unit_id]              INT NOT NULL,
    [service_id]                          INT NOT NULL,
    [role_id]                             INT NOT NULL,
    CONSTRAINT [PK_organizational_unit_service_role_rel] PRIMARY KEY CLUSTERED ([organizational_unit_service_role_id] ASC) WITH (FILLFACTOR = 90),
    CONSTRAINT [FK_organizational_unit_service_role_rel_organizational_unit] FOREIGN KEY ([organizational_unit_id]) REFERENCES [organisation].[organizational_unit] ([organizational_unit_id]),
    CONSTRAINT [FK_organizational_unit_service_role_rel_role] FOREIGN KEY ([role_id]) REFERENCES [contact].[role] ([role_id]),
    CONSTRAINT [FK_organizational_unit_service_role_rel_service] FOREIGN KEY ([service_id]) REFERENCES [service].[service] ([service_id])
);

