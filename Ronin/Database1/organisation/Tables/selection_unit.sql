CREATE TABLE [organisation].[selection_unit] (
    [selection_unit_id]      INT            IDENTITY (1, 1) NOT NULL,
    [organizational_unit_id] INT            NULL,
    [selection_type_id]      INT            NOT NULL,
    [selection_unit_name]    NVARCHAR (100) NOT NULL,
    [create_date]            DATETIME       NULL,
    [modify_date]            DATETIME       NULL,
    [delete_date]            DATETIME       NULL,
    PRIMARY KEY CLUSTERED ([selection_unit_id] ASC),
    CONSTRAINT [FK_selection_unit_organizational_unit] FOREIGN KEY ([organizational_unit_id]) REFERENCES [organisation].[organizational_unit] ([organizational_unit_id]),
    CONSTRAINT [FK_selection_unit_selection_type] FOREIGN KEY ([selection_type_id]) REFERENCES [organisation].[selection_unit_type] ([selection_type_id])
);

