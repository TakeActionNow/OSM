CREATE TABLE [organisation].[organizational_unit_type] (
    [organizational_unit_type_id]    INT            IDENTITY (1, 1) NOT NULL,
    [organizational_unit_type_value] NVARCHAR (MAX) NULL,
    [verified_date]                  DATETIME       NULL,
    [create_date]                    DATETIME       NULL,
    [modify_date]                    DATETIME       NULL,
    [delete_date]                    DATETIME       NULL,
    CONSTRAINT [PK_organisation_type] PRIMARY KEY CLUSTERED ([organizational_unit_type_id] ASC) WITH (FILLFACTOR = 90)
);

