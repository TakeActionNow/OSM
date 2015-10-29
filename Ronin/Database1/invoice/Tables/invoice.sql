CREATE TABLE [invoice].[invoice] (
    [invoice_id]                 INT      IDENTITY (1, 1) NOT NULL,
    [contact_id]                 INT      NOT NULL,
    [organizational_unit_id]     INT      NOT NULL,
    [financial_id]               INT      NOT NULL,
    [child_contract_overview_id] INT      NULL,
    [invoice_status_id]          INT      NULL,
    [payment_condition_id]       INT      NULL,
    [invoice_start_date]         DATE     NOT NULL,
    [invoice_end_date]           DATE     NOT NULL,
    [create_date]                DATETIME NULL,
    [modify_date]                DATETIME NULL,
    [delete_date]                DATETIME NULL,
    PRIMARY KEY CLUSTERED ([invoice_id] ASC),
    CONSTRAINT [FK_invoice_child_contract_overview] FOREIGN KEY ([child_contract_overview_id]) REFERENCES [childcontract].[child_contract_overview] ([child_contract_overview_id]),
    CONSTRAINT [FK_invoice_contact] FOREIGN KEY ([contact_id]) REFERENCES [contact].[contact] ([contact_id]),
    CONSTRAINT [FK_invoice_financial] FOREIGN KEY ([financial_id]) REFERENCES [invoice].[financial] ([financial_id]),
    CONSTRAINT [FK_invoice_organizational_unit] FOREIGN KEY ([organizational_unit_id]) REFERENCES [organisation].[organizational_unit] ([organizational_unit_id]),
    CONSTRAINT [FK_invoice_payment_condition] FOREIGN KEY ([payment_condition_id]) REFERENCES [invoice].[payment_condition] ([payment_condition_id])
);

