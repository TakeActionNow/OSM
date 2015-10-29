CREATE TABLE [invoice].[financial] (
    [financial_id]                    INT            IDENTITY (1, 1) NOT NULL,
    [contact_id]                      INT            NOT NULL,
    [financial_address_id]            INT            NULL,
    [financial_debter_number]         NVARCHAR (100) NULL,
    [financial_authorization_feature] NVARCHAR (100) NULL,
    [financial_debt_collection_name]  NVARCHAR (100) NULL,
    [financial_bank_name]             NVARCHAR (100) NULL,
    [financial_IBAN]                  NVARCHAR (100) NULL,
    [financial_BIC]                   NVARCHAR (100) NULL,
    [financial_has_correspondence]    BIT            NULL,
    [create_date]                     DATETIME       NULL,
    [modify_date]                     DATETIME       NULL,
    [delete_date]                     DATETIME       NULL,
    PRIMARY KEY CLUSTERED ([financial_id] ASC),
    CONSTRAINT [FK_financial_contact] FOREIGN KEY ([contact_id]) REFERENCES [contact].[contact] ([contact_id]),
    CONSTRAINT [FK_financial_financial_address] FOREIGN KEY ([financial_address_id]) REFERENCES [invoice].[financial_address] ([financial_address_id])
);

