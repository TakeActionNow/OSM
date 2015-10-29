CREATE TABLE [product].[product_pattern_day_validity] (
    [product_pattern_day_validity_id]        INT      NOT NULL,
    [product_pattern_day_id]                 INT      NOT NULL,
    [product_pattern_day_validity_startdate] DATETIME NOT NULL,
    [product_pattern_day_validity_enddate]   DATETIME NOT NULL,
    [create_date]                            DATETIME NULL,
    [modify_date]                            DATETIME NULL,
    [delete_date]                            DATETIME NULL,
    PRIMARY KEY CLUSTERED ([product_pattern_day_validity_id] ASC),
    CONSTRAINT [FK_product_pattern_day_validity_product_pattern_day_rel] FOREIGN KEY ([product_pattern_day_id]) REFERENCES [product].[product_pattern_day_rel] ([product_pattern_day_id])
);

