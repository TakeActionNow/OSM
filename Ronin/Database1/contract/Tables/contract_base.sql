CREATE TABLE [contract].[contract_base] (
    [contract_base_id]    INT            IDENTITY (1, 1) NOT NULL,
    [contract_base_value] NVARCHAR (MAX) NOT NULL,
    [create_date]         DATETIME       NULL,
    [modify_date]         DATETIME       NULL,
    [delete_date]         DATETIME       NULL,
    CONSTRAINT [PK_contract_base] PRIMARY KEY CLUSTERED ([contract_base_id] ASC) WITH (FILLFACTOR = 90)
);

