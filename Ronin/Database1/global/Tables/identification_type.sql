CREATE TABLE [global].[identification_type] (
    [identification_type_id]    INT            IDENTITY (1, 1) NOT NULL,
    [organizational_unit_id]    INT            NULL,
    [identification_type_value] NVARCHAR (100) NOT NULL,
    [create_date]               DATETIME       NULL,
    [modify_date]               DATETIME       NULL,
    [delete_date]               DATETIME       NULL,
    PRIMARY KEY CLUSTERED ([identification_type_id] ASC),
    CONSTRAINT [FK_identification_type_organizational_unit] FOREIGN KEY ([organizational_unit_id]) REFERENCES [organisation].[organizational_unit] ([organizational_unit_id])
);

