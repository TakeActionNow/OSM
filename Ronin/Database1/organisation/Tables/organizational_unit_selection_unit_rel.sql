CREATE TABLE [organisation].[organizational_unit_selection_unit_rel] (
    [organizational_unit_selection_unit_id] INT IDENTITY (1, 1) NOT NULL,
    [organizational_unit_id]                INT NOT NULL,
    [selection_unit_id]                     INT NOT NULL,
    PRIMARY KEY CLUSTERED ([organizational_unit_selection_unit_id] ASC),
    CONSTRAINT [FK_organizational_unit_selection_unit_rel_organizational_unit] FOREIGN KEY ([organizational_unit_id]) REFERENCES [organisation].[organizational_unit] ([organizational_unit_id]),
    CONSTRAINT [FK_organizational_unit_selection_unit_rel_selection_unit] FOREIGN KEY ([selection_unit_id]) REFERENCES [organisation].[selection_unit] ([selection_unit_id])
);

