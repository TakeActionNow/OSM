CREATE TABLE [organisation].[organizational_unit] (
    [organizational_unit_id]         INT            IDENTITY (1, 1) NOT NULL,
    [organizational_unit_type_id]    INT            NULL,
    [organizational_unit_subtype_id] INT            NULL,
    [organizational_unit_name]       NVARCHAR (MAX) NULL,
    [create_date]                    DATETIME       NULL,
    [modify_date]                    DATETIME       NULL,
    [delete_date]                    DATETIME       NULL,
    CONSTRAINT [PK_organisation] PRIMARY KEY CLUSTERED ([organizational_unit_id] ASC) WITH (FILLFACTOR = 90),
    CONSTRAINT [FK_organisation_organisation_type] FOREIGN KEY ([organizational_unit_type_id]) REFERENCES [organisation].[organizational_unit_type] ([organizational_unit_type_id]),
    CONSTRAINT [FK_organizational_unit_organizational_unit_subtype] FOREIGN KEY ([organizational_unit_subtype_id]) REFERENCES [organisation].[organizational_unit_subtype] ([organizational_unit_subtype_id])
);

