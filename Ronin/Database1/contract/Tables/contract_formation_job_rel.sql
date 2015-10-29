CREATE TABLE [contract].[contract_formation_job_rel] (
    [contract_formation_job_id] INT      IDENTITY (1, 1) NOT NULL,
    [contract_formation_id]     INT      NOT NULL,
    [job_id]                    INT      NOT NULL,
    [job_start_date]            DATE     NULL,
    [job_end_date]              DATE     NULL,
    [create_date]               DATETIME NULL,
    [modify_date]               DATETIME NULL,
    [delete_date]               DATETIME NULL,
    CONSTRAINT [PK_contract_formation_job_rel] PRIMARY KEY CLUSTERED ([contract_formation_job_id] ASC) WITH (FILLFACTOR = 90),
    CONSTRAINT [FK_contract_formation_job_rel_contract_mutation] FOREIGN KEY ([contract_formation_id]) REFERENCES [contract].[contract_formation] ([contract_formation_id]),
    CONSTRAINT [FK_contract_formation_job_rel_job] FOREIGN KEY ([job_id]) REFERENCES [organisation].[job] ([job_id])
);

