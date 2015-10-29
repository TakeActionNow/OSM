CREATE TABLE [service].[contact_functionality_unit_permission_rel] (
    [contact_functionality_unit_permission_id] INT IDENTITY (1, 1) NOT NULL,
    [contact_service_role_id]                  INT NOT NULL,
    [functionality_unit_permission_id]         INT NOT NULL,
    [organizational_unit_id]                   INT NOT NULL,
    PRIMARY KEY CLUSTERED ([contact_functionality_unit_permission_id] ASC),
    CONSTRAINT [FK_contact_functionality_unit_permission_rel_contact_service_role_rel] FOREIGN KEY ([contact_service_role_id]) REFERENCES [service].[contact_service_role_rel] ([contact_service_role_id]),
    CONSTRAINT [FK_contact_functionality_unit_permission_rel_functionality_permission_rel] FOREIGN KEY ([functionality_unit_permission_id]) REFERENCES [service].[functionality_unit_permission_rel] ([functionality_unit_permission_id]),
    CONSTRAINT [FK_contact_functionality_unit_permission_rel_organizational_unit] FOREIGN KEY ([organizational_unit_id]) REFERENCES [organisation].[organizational_unit] ([organizational_unit_id])
);

