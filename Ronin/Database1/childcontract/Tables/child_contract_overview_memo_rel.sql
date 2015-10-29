CREATE TABLE [childcontract].[child_contract_overview_memo_rel] (
    [child_contract_overview_memo_id] INT IDENTITY (1, 1) NOT NULL,
    [child_contract_overview_id]      INT NOT NULL,
    [memo_id]                         INT NOT NULL,
    PRIMARY KEY CLUSTERED ([child_contract_overview_memo_id] ASC),
    CONSTRAINT [FK_contract_overview_memo_rel_child_contract_overview] FOREIGN KEY ([child_contract_overview_id]) REFERENCES [childcontract].[child_contract_overview] ([child_contract_overview_id]),
    CONSTRAINT [FK_contract_overview_memo_rel_memo] FOREIGN KEY ([memo_id]) REFERENCES [contact].[memo] ([memo_id])
);

