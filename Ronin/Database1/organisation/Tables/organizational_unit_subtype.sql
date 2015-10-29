CREATE TABLE [organisation].[organizational_unit_subtype] (
    [organizational_unit_subtype_id]    INT            IDENTITY (1, 1) NOT NULL,
    [organizational_unit_type_id]       INT            NOT NULL,
    [organizational_unit_subtype_value] NVARCHAR (MAX) NOT NULL,
    [create_date]                       DATETIME       NULL,
    [modify_date]                       DATETIME       NULL,
    [delete_date]                       DATETIME       NULL,
    PRIMARY KEY CLUSTERED ([organizational_unit_subtype_id] ASC),
    CONSTRAINT [FK_organizational_unit_subtype_organizational_unit_type] FOREIGN KEY ([organizational_unit_type_id]) REFERENCES [organisation].[organizational_unit_type] ([organizational_unit_type_id])
);

