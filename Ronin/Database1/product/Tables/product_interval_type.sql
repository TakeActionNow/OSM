CREATE TABLE [product].[product_interval_type] (
    [product_interval_type_id]    INT            IDENTITY (1, 1) NOT NULL,
    [product_interval_type_value] NVARCHAR (100) NOT NULL,
    [create_date]                 DATETIME       NULL,
    [modify_date]                 DATETIME       NULL,
    [delete_date]                 DATETIME       NULL,
    PRIMARY KEY CLUSTERED ([product_interval_type_id] ASC)
);

