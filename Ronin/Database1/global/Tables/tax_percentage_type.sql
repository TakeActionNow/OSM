CREATE TABLE [global].[tax_percentage_type] (
    [tax_percentage_type_id]    INT            IDENTITY (1, 1) NOT NULL,
    [tax_percentage_type_value] NVARCHAR (100) NOT NULL,
    [create_date]               DATETIME       NULL,
    [modify_date]               DATETIME       NULL,
    [delete_date]               DATETIME       NULL,
    PRIMARY KEY CLUSTERED ([tax_percentage_type_id] ASC)
);

