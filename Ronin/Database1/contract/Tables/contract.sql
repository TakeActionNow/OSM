CREATE TABLE [contract].[contract] (
    [contract_id]             INT      IDENTITY (1, 1) NOT NULL,
    [organizational_unit_id]  INT      NOT NULL,
    [contact_id]              INT      NOT NULL,
    [contract_start_date]     DATETIME NOT NULL,
    [contract_end_date]       DATETIME NULL,
    [contract_wage_deduction] BIT      NULL,
    [create_date]             DATETIME NULL,
    [modify_date]             DATETIME NULL,
    [delete_date]             DATETIME NULL,
    CONSTRAINT [PK_contract] PRIMARY KEY CLUSTERED ([contract_id] ASC) WITH (FILLFACTOR = 90),
    CONSTRAINT [FK_contract_contact] FOREIGN KEY ([contact_id]) REFERENCES [contact].[contact] ([contact_id]),
    CONSTRAINT [FK_contract_organizational_unit] FOREIGN KEY ([organizational_unit_id]) REFERENCES [organisation].[organizational_unit] ([organizational_unit_id])
);

