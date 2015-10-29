CREATE TABLE [product].[organizational_unit_product_connection_rel] (
    [organizational_unit_product_connection_id] INT      IDENTITY (1, 1) NOT NULL,
    [product_connection_id]                     INT      NOT NULL,
    [organizational_unit_id]                    INT      NOT NULL,
    [create_date]                               DATETIME NULL,
    [modify_date]                               DATETIME NULL,
    [delete_date]                               DATETIME NULL,
    PRIMARY KEY CLUSTERED ([organizational_unit_product_connection_id] ASC),
    CONSTRAINT [FK_organizational_unit_product_connection_rel_organizational_unit] FOREIGN KEY ([organizational_unit_id]) REFERENCES [organisation].[organizational_unit] ([organizational_unit_id]),
    CONSTRAINT [FK_organizational_unit_product_connection_rel_product_connection] FOREIGN KEY ([product_connection_id]) REFERENCES [product].[product_connection] ([product_connection_id])
);

