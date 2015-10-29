CREATE TABLE [contract].[contract_mutation_buffer_hours] (
    [contract_mutation_buffer_hours_id]    INT             IDENTITY (1, 1) NOT NULL,
    [contract_mutation_id]                 INT             NOT NULL,
    [contract_mutation_buffer_hours_date]  DATETIME        NOT NULL,
    [contract_mutation_buffer_hours_value] DECIMAL (18, 4) NOT NULL,
    [create_date]                          DATETIME        NULL,
    [modify_date]                          DATETIME        NULL,
    [delete_date]                          DATETIME        NULL,
    CONSTRAINT [PK_contract_mutation_buffer_hours] PRIMARY KEY CLUSTERED ([contract_mutation_buffer_hours_id] ASC) WITH (FILLFACTOR = 90),
    CONSTRAINT [FK_contract_mutation_buffer_hours_contract_mutation] FOREIGN KEY ([contract_mutation_id]) REFERENCES [contract].[contract_mutation] ([contract_mutation_id])
);

