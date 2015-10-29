CREATE TABLE [organisation].[organizational_unit_connection] (
    [organizational_unit_connection_id] INT IDENTITY (1, 1) NOT NULL,
    [organizational_unit_parent_id]     INT NOT NULL,
    [organizational_unit_child_id]      INT NOT NULL,
    CONSTRAINT [PK_organisation_connection] PRIMARY KEY CLUSTERED ([organizational_unit_connection_id] ASC) WITH (FILLFACTOR = 90),
    CONSTRAINT [FK_organisation_connection_organisation] FOREIGN KEY ([organizational_unit_parent_id]) REFERENCES [organisation].[organizational_unit] ([organizational_unit_id]),
    CONSTRAINT [FK_organisation_connection_organisation1] FOREIGN KEY ([organizational_unit_child_id]) REFERENCES [organisation].[organizational_unit] ([organizational_unit_id])
);

