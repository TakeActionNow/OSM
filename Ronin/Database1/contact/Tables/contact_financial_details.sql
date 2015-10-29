CREATE TABLE [contact].[contact_financial_details] (
    [contact_id]                INT      NOT NULL,
    [contact_is_dubious_debter] BIT      NULL,
    [contact_is_active]         BIT      NULL,
    [create_date]               DATETIME NULL,
    [modify_date]               DATETIME NULL,
    [delete_date]               DATETIME NULL,
    PRIMARY KEY CLUSTERED ([contact_id] ASC),
    CONSTRAINT [FK_contact_financial_details_contact] FOREIGN KEY ([contact_id]) REFERENCES [contact].[contact] ([contact_id])
);

