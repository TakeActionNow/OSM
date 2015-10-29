CREATE TABLE [childcontract].[child_contract_subtype] (
    [child_contract_subtype_id]    INT            IDENTITY (1, 1) NOT NULL,
    [child_contract_subtype_value] NVARCHAR (100) NOT NULL,
    [create_date]                  DATETIME       NULL,
    [modify_date]                  DATETIME       NULL,
    [delete_date]                  DATETIME       NULL,
    PRIMARY KEY CLUSTERED ([child_contract_subtype_id] ASC)
);

