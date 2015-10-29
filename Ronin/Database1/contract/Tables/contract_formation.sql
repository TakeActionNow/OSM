CREATE TABLE [contract].[contract_formation] (
    [contract_formation_id]         INT              IDENTITY (1, 1) NOT NULL,
    [contract_mutation_id]          INT              NOT NULL,
    [contract_formation_start_date] DATE             NULL,
    [contract_formation_end_date]   DATE             NULL,
    [contract_formation_hours]      DECIMAL (36, 18) NULL,
    [create_date]                   DATETIME         NULL,
    [modify_date]                   DATETIME         NULL,
    [delete_date]                   DATETIME         NULL,
    [cost_center_id]                INT              NULL,
    [cost_unit_id]                  INT              NULL,
    CONSTRAINT [PK_contract_formation] PRIMARY KEY CLUSTERED ([contract_formation_id] ASC) WITH (FILLFACTOR = 90),
    CONSTRAINT [FK_contract_formation_contract_mutation] FOREIGN KEY ([contract_mutation_id]) REFERENCES [contract].[contract_mutation] ([contract_mutation_id]),
    CONSTRAINT [FK_contract_formation_cost_center] FOREIGN KEY ([cost_center_id]) REFERENCES [organisation].[cost_center] ([cost_center_id]),
    CONSTRAINT [FK_contract_formation_cost_unit] FOREIGN KEY ([cost_unit_id]) REFERENCES [organisation].[cost_unit] ([cost_unit_id])
);

