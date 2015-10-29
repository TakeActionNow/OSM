CREATE TABLE [invoice].[invoice_line] (
    [invoice_line_id]                INT             IDENTITY (1, 1) NOT NULL,
    [invoice_id]                     INT             NOT NULL,
    [contact_id]                     INT             NOT NULL,
    [product_id]                     INT             NOT NULL,
    [tax_condition_id]               INT             NULL,
    [invoice_line_amount]            DECIMAL (10, 2) NOT NULL,
    [invoice_line_price]             DECIMAL (10, 2) NOT NULL,
    [invoice_line_is_contract_price] BIT             NOT NULL,
    [create_date]                    DATETIME        NULL,
    [modify_date]                    DATETIME        NULL,
    [delete_date]                    DATETIME        NULL,
    PRIMARY KEY CLUSTERED ([invoice_line_id] ASC),
    CONSTRAINT [FK_invoice_line_contact] FOREIGN KEY ([contact_id]) REFERENCES [contact].[contact] ([contact_id]),
    CONSTRAINT [FK_invoice_line_invoice] FOREIGN KEY ([invoice_id]) REFERENCES [invoice].[invoice] ([invoice_id]),
    CONSTRAINT [FK_invoice_line_product] FOREIGN KEY ([product_id]) REFERENCES [product].[product] ([product_id]),
    CONSTRAINT [FK_invoice_line_tax_condition] FOREIGN KEY ([tax_condition_id]) REFERENCES [invoice].[tax_condition] ([tax_condition_id])
);

