CREATE TABLE [childcontract].[contact_contract_overview_rel] (
    [contact_contract_overview_id] INT IDENTITY (1, 1) NOT NULL,
    [contact_id]                   INT NOT NULL,
    [child_contract_overview_id]   INT NOT NULL,
    PRIMARY KEY CLUSTERED ([contact_contract_overview_id] ASC),
    CONSTRAINT [FK_contact_contract_overview_rel_child_contract_overview] FOREIGN KEY ([child_contract_overview_id]) REFERENCES [childcontract].[child_contract_overview] ([child_contract_overview_id]),
    CONSTRAINT [FK_contact_contract_overview_rel_contact] FOREIGN KEY ([contact_id]) REFERENCES [contact].[contact] ([contact_id])
);

