CREATE TABLE [contract].[salary] (
    [salary_id]             INT             IDENTITY (1, 1) NOT NULL,
    [cao_step_id]           INT             NULL,
    [contract_mutation_id]  INT             NOT NULL,
    [salary_start_date]     DATE            NULL,
    [salary_end_date]       DATE            NULL,
    [salary_monthly_salary] DECIMAL (18, 2) NULL,
    [create_date]           DATETIME        NULL,
    [modify_date]           DATETIME        NULL,
    [delete_date]           DATETIME        NULL,
    CONSTRAINT [PK_salary] PRIMARY KEY CLUSTERED ([salary_id] ASC) WITH (FILLFACTOR = 90),
    CONSTRAINT [FK_salary_cao_step] FOREIGN KEY ([cao_step_id]) REFERENCES [contract].[cao_step] ([cao_step_id]),
    CONSTRAINT [FK_salary_contract_mutation] FOREIGN KEY ([contract_mutation_id]) REFERENCES [contract].[contract_mutation] ([contract_mutation_id])
);

