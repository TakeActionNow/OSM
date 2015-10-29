CREATE TABLE [invoice].[invoice_source_information] (
    [invoice_source_information_id] INT            IDENTITY (1, 1) NOT NULL,
    [invoice_id]                    INT            NOT NULL,
    [source_id]                     INT            NOT NULL,
    [invoice_source_identifier]     NVARCHAR (MAX) NOT NULL,
    [create_date]                   DATETIME       NULL,
    [modify_date]                   DATETIME       NULL,
    [delete_date]                   DATETIME       NULL,
    PRIMARY KEY CLUSTERED ([invoice_source_information_id] ASC),
    CONSTRAINT [FK_invoice_source_information_invoice] FOREIGN KEY ([invoice_id]) REFERENCES [invoice].[invoice] ([invoice_id]),
    CONSTRAINT [FK_invoice_source_information_source] FOREIGN KEY ([source_id]) REFERENCES [global].[source] ([source_id])
);

