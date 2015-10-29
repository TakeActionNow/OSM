CREATE TABLE [service].[functionality_unit_connection] (
    [functionality_unit_connection_id] INT IDENTITY (1, 1) NOT NULL,
    [functionality_unit_parent_id]     INT NOT NULL,
    [functionality_unit_child_id]      INT NOT NULL,
    PRIMARY KEY CLUSTERED ([functionality_unit_connection_id] ASC),
    CONSTRAINT [FK_functionality_unit_connection_functionality_unit_child] FOREIGN KEY ([functionality_unit_child_id]) REFERENCES [service].[functionality_unit] ([functionality_unit_id]),
    CONSTRAINT [FK_functionality_unit_connection_functionality_unit_parent] FOREIGN KEY ([functionality_unit_parent_id]) REFERENCES [service].[functionality_unit] ([functionality_unit_id])
);

