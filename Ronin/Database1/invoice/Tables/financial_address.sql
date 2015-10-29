CREATE TABLE [invoice].[financial_address] (
    [financial_address_id]   INT           IDENTITY (1, 1) NOT NULL,
    [address_id]             INT           NOT NULL,
    [financial_address_attn] NVARCHAR (50) NULL,
    [create_date]            DATETIME      NULL,
    [modify_date]            DATETIME      NULL,
    [delete_date]            DATETIME      NULL,
    PRIMARY KEY CLUSTERED ([financial_address_id] ASC),
    CONSTRAINT [FK_financial_address_address] FOREIGN KEY ([address_id]) REFERENCES [global].[address] ([address_id])
);

