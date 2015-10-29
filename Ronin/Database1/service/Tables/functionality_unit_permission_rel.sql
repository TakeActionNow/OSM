CREATE TABLE [service].[functionality_unit_permission_rel] (
    [functionality_unit_permission_id] INT IDENTITY (1, 1) NOT NULL,
    [functionality_unit_id]            INT NOT NULL,
    [permission_id]                    INT NOT NULL,
    PRIMARY KEY CLUSTERED ([functionality_unit_permission_id] ASC),
    CONSTRAINT [FK_functionality_unit_permission_rel_functionality_unit] FOREIGN KEY ([functionality_unit_id]) REFERENCES [service].[functionality_unit] ([functionality_unit_id]),
    CONSTRAINT [FK_functionality_unit_permission_rel_permission] FOREIGN KEY ([permission_id]) REFERENCES [service].[permission] ([permission_id])
);

