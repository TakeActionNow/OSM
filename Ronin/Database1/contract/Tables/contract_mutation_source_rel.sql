CREATE TABLE [contract].[contract_mutation_source_rel] (
    [contract_mutation_source_id]  INT            IDENTITY (1, 1) NOT NULL,
    [contract_mutation_id]         INT            NOT NULL,
    [source_id]                    INT            NOT NULL,
    [external_contract_identifier] NVARCHAR (100) NOT NULL,
    [create_date]                  DATETIME       NULL,
    [modify_date]                  DATETIME       NULL,
    [delete_date]                  DATETIME       NULL,
    PRIMARY KEY CLUSTERED ([contract_mutation_source_id] ASC),
    CONSTRAINT [FK_contract_mutation_source_rel_contract_mutation] FOREIGN KEY ([contract_mutation_id]) REFERENCES [contract].[contract_mutation] ([contract_mutation_id]),
    CONSTRAINT [FK_contract_mutation_source_rel_source] FOREIGN KEY ([source_id]) REFERENCES [global].[source] ([source_id])
);

