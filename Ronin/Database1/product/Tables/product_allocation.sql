CREATE TABLE [product].[product_allocation] (
    [product_allocation_id]             INT      IDENTITY (1, 1) NOT NULL,
    [organizational_unit_id]            INT      NOT NULL,
    [product_pattern_day_id]            INT      NULL,
    [product_id]                        INT      NOT NULL,
    [product_allocation_start_datetime] DATETIME NOT NULL,
    [product_allocation_end_datetime]   DATETIME NOT NULL,
    [create_date]                       DATETIME NULL,
    [modify_date]                       DATETIME NULL,
    [delete_date]                       DATETIME NULL,
    PRIMARY KEY CLUSTERED ([product_allocation_id] ASC),
    CONSTRAINT [FK_product_allocation_organizational_unit] FOREIGN KEY ([organizational_unit_id]) REFERENCES [organisation].[organizational_unit] ([organizational_unit_id]),
    CONSTRAINT [FK_product_allocation_product] FOREIGN KEY ([product_id]) REFERENCES [product].[product] ([product_id]),
    CONSTRAINT [FK_product_allocation_product_pattern_day] FOREIGN KEY ([product_pattern_day_id]) REFERENCES [product].[product_pattern_day_rel] ([product_pattern_day_id])
);

