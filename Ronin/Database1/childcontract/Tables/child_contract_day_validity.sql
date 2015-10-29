CREATE TABLE [childcontract].[child_contract_day_validity] (
    [child_contract_day_validity_id] INT      IDENTITY (1, 1) NOT NULL,
    [child_contract_day_id]          INT      NOT NULL,
    [day_validity_start_date]        DATETIME NOT NULL,
    [day_validity_end_date]          DATETIME NOT NULL,
    [create_date]                    DATETIME NULL,
    [modify_date]                    DATETIME NULL,
    [delete_date]                    DATETIME NULL,
    PRIMARY KEY CLUSTERED ([child_contract_day_validity_id] ASC),
    CONSTRAINT [FK_child_contract_day_validity_child_contract_day] FOREIGN KEY ([child_contract_day_id]) REFERENCES [childcontract].[child_contract_day_rel] ([child_contract_day_id])
);

