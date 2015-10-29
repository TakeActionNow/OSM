CREATE TABLE [organisation].[organizational_unit_address_rel] (
    [organizational_unit_address_id]         INT      IDENTITY (1, 1) NOT NULL,
    [address_id]                             INT      NOT NULL,
    [organizational_unit_id]                 INT      NOT NULL,
    [address_type_id]                        INT      NULL,
    [organizational_unit_address_start_date] DATETIME NULL,
    [organizational_unit_address_end_date]   DATETIME NULL,
    [create_date]                            DATETIME NULL,
    [delete_date]                            DATETIME NULL,
    PRIMARY KEY CLUSTERED ([organizational_unit_address_id] ASC),
    CONSTRAINT [FK_organizational_unit_address_rel_address] FOREIGN KEY ([address_id]) REFERENCES [global].[address] ([address_id]),
    CONSTRAINT [FK_organizational_unit_address_rel_address_type] FOREIGN KEY ([address_type_id]) REFERENCES [global].[address_type] ([address_type_id]),
    CONSTRAINT [FK_organizational_unit_address_rel_organizational_unit] FOREIGN KEY ([organizational_unit_id]) REFERENCES [organisation].[organizational_unit] ([organizational_unit_id])
);

