CREATE TABLE [contract].[contract_type] (
    [contract_type_id]       INT            IDENTITY (1, 1) NOT NULL,
    [organizational_unit_id] INT            NULL,
    [contract_type_value]    NVARCHAR (MAX) NOT NULL,
    [create_date]            DATETIME       NULL,
    [modify_date]            DATETIME       NULL,
    [delete_date]            DATETIME       NULL,
    CONSTRAINT [PK_contract_type] PRIMARY KEY CLUSTERED ([contract_type_id] ASC) WITH (FILLFACTOR = 90),
    CONSTRAINT [FK_contract_type_organizational_unit] FOREIGN KEY ([organizational_unit_id]) REFERENCES [organisation].[organizational_unit] ([organizational_unit_id])
);

