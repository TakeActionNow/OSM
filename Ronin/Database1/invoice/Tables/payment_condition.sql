CREATE TABLE [invoice].[payment_condition] (
    [payment_condition_id]          INT            IDENTITY (1, 1) NOT NULL,
    [source_id]                     INT            NOT NULL,
    [payment_type_id]               INT            NULL,
    [payment_condition_code]        NVARCHAR (50)  NULL,
    [payment_condition_description] NVARCHAR (MAX) NOT NULL,
    [create_date]                   DATETIME       NULL,
    [modify_date]                   DATETIME       NULL,
    [delete_date]                   DATETIME       NULL,
    PRIMARY KEY CLUSTERED ([payment_condition_id] ASC),
    CONSTRAINT [FK_payment_condition_payment_type] FOREIGN KEY ([payment_type_id]) REFERENCES [invoice].[payment_type] ([payment_type_id]),
    CONSTRAINT [FK_payment_condition_source] FOREIGN KEY ([source_id]) REFERENCES [global].[source] ([source_id])
);

