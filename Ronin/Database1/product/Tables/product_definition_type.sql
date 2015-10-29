CREATE TABLE [product].[product_definition_type] (
    [product_definition_type_id]    INT            IDENTITY (1, 1) NOT NULL,
    [product_definition_type_value] NVARCHAR (100) NOT NULL,
    [create_date]                   DATETIME       NULL,
    [modify_date]                   DATETIME       NULL,
    [delete_date]                   DATETIME       NULL,
    PRIMARY KEY CLUSTERED ([product_definition_type_id] ASC)
);

