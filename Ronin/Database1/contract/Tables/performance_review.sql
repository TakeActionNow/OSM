CREATE TABLE [contract].[performance_review] (
    [performance_review_id]   INT      IDENTITY (1, 1) NOT NULL,
    [contract_mutation_id]    INT      NOT NULL,
    [performance_review_date] DATETIME NOT NULL,
    [create_date]             DATETIME NULL,
    [modify_date]             DATETIME NULL,
    [delete_date]             DATETIME NULL,
    PRIMARY KEY CLUSTERED ([performance_review_id] ASC),
    CONSTRAINT [FK_performance_review_contract_mutation] FOREIGN KEY ([contract_mutation_id]) REFERENCES [contract].[contract_mutation] ([contract_mutation_id])
);

