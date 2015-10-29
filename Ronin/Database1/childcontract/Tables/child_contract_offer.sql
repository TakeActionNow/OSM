CREATE TABLE [childcontract].[child_contract_offer] (
    [child_contract_offer_id]         INT      IDENTITY (1, 1) NOT NULL,
    [child_contract_day_validity_id]  INT      NOT NULL,
    [child_contract_offer_type_id]    INT      NOT NULL,
    [child_contract_offer_start_time] TIME (0) NULL,
    [child_contract_offer_end_time]   TIME (0) NULL,
    [child_contract_offer_start_date] DATETIME NOT NULL,
    [child_contract_offer_end_date]   DATETIME NOT NULL,
    [create_date]                     DATETIME NULL,
    [modify_date]                     DATETIME NULL,
    [delete_date]                     DATETIME NULL,
    PRIMARY KEY CLUSTERED ([child_contract_offer_id] ASC),
    CONSTRAINT [FK_child_contract_offer_child_contract_day_validity] FOREIGN KEY ([child_contract_day_validity_id]) REFERENCES [childcontract].[child_contract_day_validity] ([child_contract_day_validity_id]),
    CONSTRAINT [FK_child_contract_offer_child_contract_offer_type] FOREIGN KEY ([child_contract_offer_type_id]) REFERENCES [childcontract].[child_contract_offer_type] ([child_contract_offer_type_id])
);

