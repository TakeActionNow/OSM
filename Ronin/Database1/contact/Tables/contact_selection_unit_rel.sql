CREATE TABLE [contact].[contact_selection_unit_rel] (
    [contact_selection_unit_id] INT IDENTITY (1, 1) NOT NULL,
    [contact_id]                INT NOT NULL,
    [selection_unit_id]         INT NOT NULL,
    PRIMARY KEY CLUSTERED ([contact_selection_unit_id] ASC),
    CONSTRAINT [FK_contact_selection_unit_rel_contact] FOREIGN KEY ([contact_id]) REFERENCES [contact].[contact] ([contact_id]),
    CONSTRAINT [FK_contact_selection_unit_rel_selection_unit] FOREIGN KEY ([selection_unit_id]) REFERENCES [organisation].[selection_unit] ([selection_unit_id])
);

