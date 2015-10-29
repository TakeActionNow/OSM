CREATE TABLE [childcontract].[child_contract_day_rel] (
    [child_contract_day_id]          INT      IDENTITY (1, 1) NOT NULL,
    [child_contract_id]              INT      NOT NULL,
    [day_of_week_id]                 INT      NOT NULL,
    [product_id]                     INT      NOT NULL,
    [organizational_unit_subtype_id] INT      NOT NULL,
    [organizational_unit_id]         INT      NULL,
    [child_contract_day_start_time]  TIME (0) NOT NULL,
    [child_contract_day_end_time]    TIME (0) NOT NULL,
    [child_contract_day_amount]      INT      NULL,
    [has_custom_quantity_discount]   BIT      NULL,
    [create_date]                    DATETIME NULL,
    [modify_date]                    DATETIME NULL,
    [delete_date]                    DATETIME NULL,
    PRIMARY KEY CLUSTERED ([child_contract_day_id] ASC),
    CONSTRAINT [FK_child_contract_day_rel_child_contract] FOREIGN KEY ([child_contract_id]) REFERENCES [childcontract].[child_contract] ([child_contract_id]),
    CONSTRAINT [FK_child_contract_day_rel_day_of_week] FOREIGN KEY ([day_of_week_id]) REFERENCES [global].[day_of_week] ([day_of_week_id]),
    CONSTRAINT [FK_child_contract_day_rel_organizational_unit] FOREIGN KEY ([organizational_unit_id]) REFERENCES [organisation].[organizational_unit] ([organizational_unit_id]),
    CONSTRAINT [FK_child_contract_day_rel_organizational_unit_subtype] FOREIGN KEY ([organizational_unit_subtype_id]) REFERENCES [organisation].[organizational_unit_subtype] ([organizational_unit_subtype_id]),
    CONSTRAINT [FK_child_contract_day_rel_product] FOREIGN KEY ([product_id]) REFERENCES [product].[product] ([product_id])
);

