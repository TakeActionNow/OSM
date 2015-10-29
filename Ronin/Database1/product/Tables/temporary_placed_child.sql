CREATE TABLE [product].[temporary_placed_child] (
    [temporary_placed_child_id]   INT      IDENTITY (1, 1) NOT NULL,
    [product_connection_id]       INT      NOT NULL,
    [contact_id]                  INT      NOT NULL,
    [child_contract_id]           INT      NULL,
    [temporary_placed_child_date] DATE     NOT NULL,
    [create_date]                 DATETIME NULL,
    [modify_date]                 DATETIME NULL,
    [delete_date]                 DATETIME NULL,
    PRIMARY KEY CLUSTERED ([temporary_placed_child_id] ASC),
    CONSTRAINT [FK_temporary_placed_child_child_contract] FOREIGN KEY ([child_contract_id]) REFERENCES [childcontract].[child_contract] ([child_contract_id]),
    CONSTRAINT [FK_temporary_placed_child_contact] FOREIGN KEY ([contact_id]) REFERENCES [contact].[contact] ([contact_id]),
    CONSTRAINT [FK_temporary_placed_child_product_connection] FOREIGN KEY ([product_connection_id]) REFERENCES [product].[product_connection] ([product_connection_id])
);

