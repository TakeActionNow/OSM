CREATE TABLE [invoice].[invoice_correction] (
    [invoice_correction_id]       INT      IDENTITY (1, 1) NOT NULL,
    [invoice_parent_id]           INT      NOT NULL,
    [invoice_child_id]            INT      NOT NULL,
    [invoice_correction_datetime] DATETIME NOT NULL,
    [create_date]                 DATETIME NULL,
    [modify_date]                 DATETIME NULL,
    [delete_date]                 DATETIME NULL,
    PRIMARY KEY CLUSTERED ([invoice_correction_id] ASC),
    CONSTRAINT [FK_invoice_correction_child_invoice] FOREIGN KEY ([invoice_child_id]) REFERENCES [invoice].[invoice] ([invoice_id]),
    CONSTRAINT [FK_invoice_correction_parent_invoice] FOREIGN KEY ([invoice_parent_id]) REFERENCES [invoice].[invoice] ([invoice_id])
);

