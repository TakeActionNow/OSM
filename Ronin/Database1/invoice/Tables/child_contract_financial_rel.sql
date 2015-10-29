CREATE TABLE [invoice].[child_contract_financial_rel] (
    [child_contract_financial_id] INT IDENTITY (1, 1) NOT NULL,
    [financial_id]                INT NOT NULL,
    [child_contract_overview_id]  INT NOT NULL,
    PRIMARY KEY CLUSTERED ([child_contract_financial_id] ASC),
    CONSTRAINT [FK_child_contract_financial_rel_child_contract_overview] FOREIGN KEY ([child_contract_overview_id]) REFERENCES [childcontract].[child_contract_overview] ([child_contract_overview_id]),
    CONSTRAINT [FK_child_contract_financial_rel_financial] FOREIGN KEY ([financial_id]) REFERENCES [invoice].[financial] ([financial_id])
);

