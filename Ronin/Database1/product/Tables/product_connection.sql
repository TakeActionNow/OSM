CREATE TABLE [product].[product_connection] (
    [product_connection_id]     INT      IDENTITY (1, 1) NOT NULL,
    [organizational_unit_id]    INT      NULL,
    [product_definition_id]     INT      NOT NULL,
    [product_implementation_id] INT      NOT NULL,
    [product_pattern_id]        INT      NOT NULL,
    [create_date]               DATETIME NULL,
    [modify_date]               DATETIME NULL,
    [delete_date]               DATETIME NULL,
    PRIMARY KEY CLUSTERED ([product_connection_id] ASC),
    CONSTRAINT [FK_product_connection_organizational_unit] FOREIGN KEY ([organizational_unit_id]) REFERENCES [organisation].[organizational_unit] ([organizational_unit_id]),
    CONSTRAINT [FK_product_connection_product_definition] FOREIGN KEY ([product_definition_id]) REFERENCES [product].[product] ([product_id]),
    CONSTRAINT [FK_product_connection_product_implementation] FOREIGN KEY ([product_implementation_id]) REFERENCES [product].[product] ([product_id]),
    CONSTRAINT [FK_product_connection_product_pattern] FOREIGN KEY ([product_pattern_id]) REFERENCES [product].[product_pattern] ([product_pattern_id])
);

