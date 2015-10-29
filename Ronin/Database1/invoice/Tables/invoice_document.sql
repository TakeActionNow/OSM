CREATE TABLE [invoice].[invoice_document] (
    [invoice_document_id] INT      IDENTITY (1, 1) NOT NULL,
    [invoice_id]          INT      NOT NULL,
    [document_id]         INT      NOT NULL,
    [export_date]         DATETIME NOT NULL,
    [create_date]         DATETIME NULL,
    [modify_date]         DATETIME NULL,
    [delete_date]         DATETIME NULL,
    PRIMARY KEY CLUSTERED ([invoice_document_id] ASC),
    CONSTRAINT [FK_invoice_document_document] FOREIGN KEY ([document_id]) REFERENCES [media].[document] ([document_id]),
    CONSTRAINT [FK_invoice_document_invoice] FOREIGN KEY ([invoice_id]) REFERENCES [invoice].[invoice] ([invoice_id])
);

