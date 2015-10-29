CREATE TABLE [childcontract].[child_contract_overview] (
    [child_contract_overview_id]     INT      IDENTITY (1, 1) NOT NULL,
    [organizational_unit_id]         INT      NOT NULL,
    [child_contract_overview_number] INT      NULL,
    [overview_is_removed]            BIT      NULL,
    [create_date]                    DATETIME NULL,
    [modify_date]                    DATETIME NULL,
    [delete_date]                    DATETIME NULL,
    PRIMARY KEY CLUSTERED ([child_contract_overview_id] ASC),
    CONSTRAINT [FK_child_contract_overview_organizational_unit] FOREIGN KEY ([organizational_unit_id]) REFERENCES [organisation].[organizational_unit] ([organizational_unit_id])
);

