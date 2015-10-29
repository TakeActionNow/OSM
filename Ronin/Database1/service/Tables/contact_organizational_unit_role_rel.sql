CREATE TABLE [service].[contact_organizational_unit_role_rel] (
    [contact_organizational_unit_role_id] INT IDENTITY (1, 1) NOT NULL,
    [contact_id]                          INT NOT NULL,
    [organizational_unit_service_role_id] INT NOT NULL,
    PRIMARY KEY CLUSTERED ([contact_organizational_unit_role_id] ASC),
    CONSTRAINT [FK_contact_organizational_unit_role_rel_contact] FOREIGN KEY ([contact_id]) REFERENCES [contact].[contact] ([contact_id]),
    CONSTRAINT [FK_contact_organizational_unit_role_rel_organizational_unit_service_role_rel] FOREIGN KEY ([organizational_unit_service_role_id]) REFERENCES [service].[organizational_unit_service_role_rel] ([organizational_unit_service_role_id])
);

