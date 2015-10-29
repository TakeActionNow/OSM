CREATE TABLE [childcontract].[child_contract_prospect_information_rel] (
    [child_contract_prospect_information_id] INT      IDENTITY (1, 1) NOT NULL,
    [child_contract_id]                      INT      NOT NULL,
    [prospect_information_id]                INT      NOT NULL,
    [child_contract_information_date]        DATE     NOT NULL,
    [child_contract_information_is_active]   BIT      DEFAULT ((0)) NOT NULL,
    [create_date]                            DATETIME NULL,
    [modify_date]                            DATETIME NULL,
    [delete_date]                            DATETIME NULL,
    PRIMARY KEY CLUSTERED ([child_contract_prospect_information_id] ASC),
    CONSTRAINT [FK_child_contract_information_rel_child_contract] FOREIGN KEY ([child_contract_id]) REFERENCES [childcontract].[child_contract] ([child_contract_id]),
    CONSTRAINT [FK_child_contract_information_rel_prospect_information] FOREIGN KEY ([prospect_information_id]) REFERENCES [childcontract].[prospect_information] ([prospect_information_id])
);

