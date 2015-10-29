CREATE TABLE [organisation].[organizational_unit_expense] (
    [organizational_unit_expense_id]     INT             IDENTITY (1, 1) NOT NULL,
    [organizational_unit_id]             INT             NOT NULL,
    [expense_id]                         INT             NOT NULL,
    [organizational_unit_expense_amount] DECIMAL (10, 2) NOT NULL,
    [create_date]                        DATETIME        NULL,
    [modify_date]                        DATETIME        NULL,
    [delete_date]                        DATETIME        NULL,
    PRIMARY KEY CLUSTERED ([organizational_unit_expense_id] ASC),
    CONSTRAINT [FK_organizational_unit_expense_expense] FOREIGN KEY ([expense_id]) REFERENCES [organisation].[expense] ([expense_id]),
    CONSTRAINT [FK_organizational_unit_expense_organizational_unit] FOREIGN KEY ([organizational_unit_id]) REFERENCES [organisation].[organizational_unit] ([organizational_unit_id])
);

