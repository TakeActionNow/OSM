CREATE TABLE [invoice].[invoice_line_child_allocation_rel] (
    [invoice_line_child_allocation_id] INT      IDENTITY (1, 1) NOT NULL,
    [invoice_line_id]                  INT      NOT NULL,
    [child_allocation_id]              INT      NOT NULL,
    [create_date]                      DATETIME NULL,
    [modify_date]                      DATETIME NULL,
    [delete_date]                      DATETIME NULL,
    PRIMARY KEY CLUSTERED ([invoice_line_child_allocation_id] ASC),
    CONSTRAINT [FK_invoice_line_child_allocation_rel_child_allocation] FOREIGN KEY ([child_allocation_id]) REFERENCES [planning].[child_allocation] ([child_allocation_id]),
    CONSTRAINT [FK_invoice_line_child_allocation_rel_invoice_line] FOREIGN KEY ([invoice_line_id]) REFERENCES [invoice].[invoice_line] ([invoice_line_id])
);

