CREATE TABLE [service].[functionality_unit_type] (
    [functionality_unit_type_id]    INT            IDENTITY (1, 1) NOT NULL,
    [functionality_unit_type_value] NVARCHAR (100) NOT NULL,
    [create_date]                   DATETIME       NULL,
    [modify_date]                   DATETIME       NULL,
    [delete_date]                   DATETIME       NULL,
    PRIMARY KEY CLUSTERED ([functionality_unit_type_id] ASC)
);

