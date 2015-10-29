CREATE TABLE [contact].[contact_address_rel] (
    [contact_address_id]         INT      IDENTITY (1, 1) NOT NULL,
    [contact_id]                 INT      NOT NULL,
    [address_id]                 INT      NOT NULL,
    [address_type_id]            INT      NULL,
    [contact_address_start_date] DATETIME NULL,
    [contact_address_end_date]   DATETIME NULL,
    [create_date]                DATETIME NULL,
    [delete_date]                DATETIME NULL,
    PRIMARY KEY CLUSTERED ([contact_address_id] ASC),
    CONSTRAINT [FK_contact_address_rel_address] FOREIGN KEY ([address_id]) REFERENCES [global].[address] ([address_id]),
    CONSTRAINT [FK_contact_address_rel_address_type] FOREIGN KEY ([address_type_id]) REFERENCES [global].[address_type] ([address_type_id]),
    CONSTRAINT [FK_contact_address_rel_contact] FOREIGN KEY ([contact_id]) REFERENCES [contact].[contact] ([contact_id])
);

