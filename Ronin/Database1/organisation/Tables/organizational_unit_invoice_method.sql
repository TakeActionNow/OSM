CREATE TABLE [organisation].[organizational_unit_invoice_method] (
    [organizational_unit_invoice_method_id] INT      IDENTITY (1, 1) NOT NULL,
    [organizational_unit_id]                INT      NOT NULL,
    [invoice_method_id]                     INT      NOT NULL,
    [invoice_method_start_date]             DATE     NOT NULL,
    [invoice_method_end_date]               DATE     NULL,
    [create_date]                           DATETIME NULL,
    [modify_date]                           DATETIME NULL,
    [delete_date]                           DATETIME NULL,
    PRIMARY KEY CLUSTERED ([organizational_unit_invoice_method_id] ASC),
    CONSTRAINT [FK_organizational_unit_invoice_method_invoice_method] FOREIGN KEY ([invoice_method_id]) REFERENCES [invoice].[invoice_method] ([invoice_method_id]),
    CONSTRAINT [FK_organizational_unit_invoice_method_organizational_unit] FOREIGN KEY ([organizational_unit_id]) REFERENCES [organisation].[organizational_unit] ([organizational_unit_id])
);

