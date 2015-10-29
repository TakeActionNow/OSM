CREATE TABLE [sync].[customer_information] (
    [customer_information_id]        INT            IDENTITY (1, 1) NOT NULL,
    [organizational_unit_id]         INT            NOT NULL,
    [organizational_unit_connection] NVARCHAR (MAX) NOT NULL,
    [create_date]                    DATETIME       NULL,
    [modify_date]                    DATETIME       NULL,
    [delete_date]                    DATETIME       NULL,
    PRIMARY KEY CLUSTERED ([customer_information_id] ASC),
    CONSTRAINT [FK_customer_information_organizational_unit] FOREIGN KEY ([organizational_unit_id]) REFERENCES [organisation].[organizational_unit] ([organizational_unit_id])
);

