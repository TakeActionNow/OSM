CREATE TABLE [childcontract].[child_contract_day_product_discount] (
    [child_contract_day_quanitity_discount_id] INT      IDENTITY (1, 1) NOT NULL,
    [child_contract_day_id]                    INT      NOT NULL,
    [product_quantity_discount_id]             INT      NOT NULL,
    [create_date]                              DATETIME NULL,
    [modify_date]                              DATETIME NULL,
    [delete_date]                              DATETIME NULL,
    PRIMARY KEY CLUSTERED ([child_contract_day_quanitity_discount_id] ASC),
    CONSTRAINT [FK_child_contract_day_product_discount_child_contract_day_rel] FOREIGN KEY ([child_contract_day_id]) REFERENCES [childcontract].[child_contract_day_rel] ([child_contract_day_id]),
    CONSTRAINT [FK_child_contract_day_product_discount_product_quantity_discount] FOREIGN KEY ([product_quantity_discount_id]) REFERENCES [product].[product_quantity_discount] ([product_quantity_discount_id])
);

