CREATE TABLE [service].[organizational_unit_role_functionality_unit_permission_rel] (
    [organizational_unit_role_functionality_unit_permission_id] INT IDENTITY (1, 1) NOT NULL,
    [organizational_unit_service_role_id]                       INT NOT NULL,
    [functionality_unit_permission_id]                          INT NOT NULL,
    [organizational_unit_id]                                    INT NOT NULL,
    PRIMARY KEY CLUSTERED ([organizational_unit_role_functionality_unit_permission_id] ASC),
    CONSTRAINT [FK_organizational_unit_role_functionality_unit_permission_rel_functionality_unit_permission_rel] FOREIGN KEY ([functionality_unit_permission_id]) REFERENCES [service].[functionality_unit_permission_rel] ([functionality_unit_permission_id]),
    CONSTRAINT [FK_organizational_unit_role_functionality_unit_permission_rel_organizational_unit] FOREIGN KEY ([organizational_unit_id]) REFERENCES [organisation].[organizational_unit] ([organizational_unit_id]),
    CONSTRAINT [FK_organizational_unit_role_functionality_unit_permission_rel_organizational_unit_service_role_rel] FOREIGN KEY ([organizational_unit_service_role_id]) REFERENCES [service].[organizational_unit_service_role_rel] ([organizational_unit_service_role_id])
);

