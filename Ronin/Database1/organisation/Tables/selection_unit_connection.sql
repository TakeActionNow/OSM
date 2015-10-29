CREATE TABLE [organisation].[selection_unit_connection] (
    [selection_unit_connection_id] INT IDENTITY (1, 1) NOT NULL,
    [selection_unit_parent_id]     INT NOT NULL,
    [selection_unit_child_id]      INT NOT NULL,
    PRIMARY KEY CLUSTERED ([selection_unit_connection_id] ASC),
    CONSTRAINT [FK_selection_unit_connection_selection_unit] FOREIGN KEY ([selection_unit_parent_id]) REFERENCES [organisation].[selection_unit] ([selection_unit_id]),
    CONSTRAINT [FK_selection_unit_connection_selection_unit1] FOREIGN KEY ([selection_unit_child_id]) REFERENCES [organisation].[selection_unit] ([selection_unit_id])
);

