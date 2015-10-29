CREATE TABLE [organisation].[selection_unit_type] (
    [selection_type_id]    INT            IDENTITY (1, 1) NOT NULL,
    [selection_type_value] NVARCHAR (100) NOT NULL,
    [create_date]          DATETIME       NULL,
    [modify_date]          DATETIME       NULL,
    [delete_date]          DATETIME       NULL,
    PRIMARY KEY CLUSTERED ([selection_type_id] ASC)
);

