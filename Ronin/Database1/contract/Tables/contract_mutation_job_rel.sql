CREATE TABLE [contract].[contract_mutation_job_rel] (
    [contract_mutation_job_id] INT      IDENTITY (1, 1) NOT NULL,
    [contract_mutation_id]     INT      NOT NULL,
    [contact_id]               INT      NOT NULL,
    [job_id]                   INT      NOT NULL,
    [create_date]              DATETIME NULL,
    [modify_date]              DATETIME NULL,
    [delete_date]              DATETIME NULL,
    CONSTRAINT [PK_contract_mutation_job_rel] PRIMARY KEY CLUSTERED ([contract_mutation_job_id] ASC) WITH (FILLFACTOR = 90),
    CONSTRAINT [FK_contract_mutation_job_rel_contact] FOREIGN KEY ([contact_id]) REFERENCES [contact].[contact] ([contact_id]),
    CONSTRAINT [FK_contract_mutation_job_rel_contract_mutation] FOREIGN KEY ([contract_mutation_id]) REFERENCES [contract].[contract_mutation] ([contract_mutation_id]),
    CONSTRAINT [FK_contract_mutation_job_rel_job] FOREIGN KEY ([job_id]) REFERENCES [organisation].[job] ([job_id])
);

