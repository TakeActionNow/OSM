CREATE TABLE [planning].[child_allocation] (
    [child_allocation_id]             INT      IDENTITY (1, 1) NOT NULL,
    [contact_id]                      INT      NOT NULL,
    [child_contract_id]               INT      NULL,
    [product_allocation_id]           INT      NULL,
    [organizational_unit_id]          INT      NULL,
    [child_hour_status_id]            INT      NULL,
    [child_allocation_start_datetime] DATETIME NOT NULL,
    [child_allocation_end_datetime]   DATETIME NOT NULL,
    [child_allocation_is_prolonged]   BIT      DEFAULT ((0)) NOT NULL,
    [child_allocation_is_on_contract] BIT      DEFAULT ((0)) NOT NULL,
    [child_allocation_comment]        TEXT     NULL,
    [create_date]                     DATETIME NULL,
    [modify_date]                     DATETIME NULL,
    [delete_date]                     DATETIME NULL,
    PRIMARY KEY CLUSTERED ([child_allocation_id] ASC),
    CONSTRAINT [FK_child_allocation_child_contract] FOREIGN KEY ([child_contract_id]) REFERENCES [childcontract].[child_contract] ([child_contract_id]),
    CONSTRAINT [FK_child_allocation_child_hour_status] FOREIGN KEY ([child_hour_status_id]) REFERENCES [global].[child_hour_status] ([child_hour_status_id]),
    CONSTRAINT [FK_child_allocation_contact] FOREIGN KEY ([contact_id]) REFERENCES [contact].[contact] ([contact_id]),
    CONSTRAINT [FK_child_allocation_organizational_unit] FOREIGN KEY ([organizational_unit_id]) REFERENCES [organisation].[organizational_unit] ([organizational_unit_id]),
    CONSTRAINT [FK_child_allocation_product_allocation] FOREIGN KEY ([product_allocation_id]) REFERENCES [product].[product_allocation] ([product_allocation_id])
);

