CREATE TABLE [childcontract].[child_contract_type] (
    [child_contract_type_id]    INT           IDENTITY (1, 1) NOT NULL,
    [child_contract_type_value] NVARCHAR (50) NOT NULL,
    [create_date]               DATETIME      NULL,
    [modify_date]               DATETIME      NULL,
    [delete_date]               DATETIME      NULL,
    PRIMARY KEY CLUSTERED ([child_contract_type_id] ASC)
);

