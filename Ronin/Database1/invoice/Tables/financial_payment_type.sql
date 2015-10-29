CREATE TABLE [invoice].[financial_payment_type] (
    [financial_payment_type_id] INT            IDENTITY (1, 1) NOT NULL,
    [financial_id]              INT            NOT NULL,
    [payment_type_id]           INT            NULL,
    [authorization_date]        DATETIME       NULL,
    [authorization_name]        NVARCHAR (100) NULL,
    [create_date]               DATETIME       NULL,
    [modify_date]               DATETIME       NULL,
    [delete_date]               DATETIME       NULL,
    PRIMARY KEY CLUSTERED ([financial_payment_type_id] ASC),
    CONSTRAINT [FK_financial_payment_type_financial] FOREIGN KEY ([financial_id]) REFERENCES [invoice].[financial] ([financial_id]),
    CONSTRAINT [FK_financial_payment_type_payment_type] FOREIGN KEY ([payment_type_id]) REFERENCES [invoice].[payment_type] ([payment_type_id])
);

