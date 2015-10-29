CREATE TABLE [contract].[working_days] (
    [working_days_id]      INT              IDENTITY (1, 1) NOT NULL,
    [contract_mutation_id] INT              NOT NULL,
    [day_of_week_id]       INT              NOT NULL,
    [working_days_hours]   DECIMAL (36, 18) NULL,
    [create_date]          DATETIME         NULL,
    [modify_date]          DATETIME         NULL,
    [delete_date]          DATETIME         NULL,
    CONSTRAINT [PK_working_days] PRIMARY KEY CLUSTERED ([working_days_id] ASC) WITH (FILLFACTOR = 90),
    CONSTRAINT [FK_working_days_contract_mutation] FOREIGN KEY ([contract_mutation_id]) REFERENCES [contract].[contract_mutation] ([contract_mutation_id]),
    CONSTRAINT [FK_working_days_day_of_week] FOREIGN KEY ([day_of_week_id]) REFERENCES [global].[day_of_week] ([day_of_week_id])
);

