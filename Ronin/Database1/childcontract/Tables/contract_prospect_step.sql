CREATE TABLE [childcontract].[contract_prospect_step] (
    [contract_prospect_step_id]         INT      IDENTITY (1, 1) NOT NULL,
    [child_contract_id]                 INT      NOT NULL,
    [prospect_step_id]                  INT      NOT NULL,
    [contract_prospect_step_start_date] DATE     NULL,
    [contract_prospect_step_end_date]   DATE     NULL,
    [create_date]                       DATETIME NULL,
    [modify_date]                       DATETIME NULL,
    [delete_date]                       DATETIME NULL,
    PRIMARY KEY CLUSTERED ([contract_prospect_step_id] ASC),
    CONSTRAINT [FK_contract_prospect_step_child_contract] FOREIGN KEY ([child_contract_id]) REFERENCES [childcontract].[child_contract] ([child_contract_id]),
    CONSTRAINT [FK_contract_prospect_step_prospect_step] FOREIGN KEY ([prospect_step_id]) REFERENCES [childcontract].[prospect_step] ([prospect_step_id])
);

