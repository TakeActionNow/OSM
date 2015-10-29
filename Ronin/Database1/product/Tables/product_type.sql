CREATE TABLE [product].[product_type] (
    [product_type_id]    INT           IDENTITY (1, 1) NOT NULL,
    [product_type_value] NVARCHAR (50) NOT NULL,
    [create_date]        DATETIME      NULL,
    [modify_date]        DATETIME      NULL,
    [delete_date]        DATETIME      NULL,
    PRIMARY KEY CLUSTERED ([product_type_id] ASC)
);

