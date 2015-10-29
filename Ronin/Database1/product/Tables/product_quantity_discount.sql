CREATE TABLE [product].[product_quantity_discount] (
    [product_quantity_discount_id] INT             IDENTITY (1, 1) NOT NULL,
    [product_id]                   INT             NOT NULL,
    [quantity_discount_type_id]    INT             NULL,
    [discount_start_time]          TIME (0)        NOT NULL,
    [discount_end_time]            TIME (0)        NOT NULL,
    [discount_minimum_hours]       DECIMAL (10, 2) NOT NULL,
    [discount_maximum_hours]       DECIMAL (10, 2) NOT NULL,
    [discount_minimum_weeks]       INT             NOT NULL,
    [discount_maximum_weeks]       INT             NOT NULL,
    [discount_price]               DECIMAL (10, 2) NOT NULL,
    [create_date]                  DATETIME        NULL,
    [modify_date]                  DATETIME        NULL,
    [delete_date]                  DATETIME        NULL,
    PRIMARY KEY CLUSTERED ([product_quantity_discount_id] ASC),
    CONSTRAINT [FK_product_quantity_discount_product] FOREIGN KEY ([product_id]) REFERENCES [product].[product] ([product_id]),
    CONSTRAINT [FK_product_quantity_discount_quantity_discount_type] FOREIGN KEY ([quantity_discount_type_id]) REFERENCES [product].[quantity_discount_type] ([quantity_discount_type_id])
);

