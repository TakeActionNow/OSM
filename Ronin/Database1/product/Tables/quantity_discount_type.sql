CREATE TABLE [product].[quantity_discount_type] (
    [quantity_discount_type_id]    INT            IDENTITY (1, 1) NOT NULL,
    [quantity_discount_type_value] NVARCHAR (100) NOT NULL,
    [create_date]                  DATETIME       NULL,
    [modify_date]                  DATETIME       NULL,
    [delete_date]                  DATETIME       NULL,
    PRIMARY KEY CLUSTERED ([quantity_discount_type_id] ASC)
);

