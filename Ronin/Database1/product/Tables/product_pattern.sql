CREATE TABLE [product].[product_pattern] (
    [product_pattern_id]           INT      IDENTITY (1, 1) NOT NULL,
    [pattern_cycle_type_id]        INT      NULL,
    [product_pattern_start_date]   DATE     NOT NULL,
    [product_pattern_end_date]     DATE     NOT NULL,
    [product_pattern_interval]     INT      NULL,
    [product_pattern_cycle_amount] INT      NULL,
    [create_date]                  DATETIME NULL,
    [modify_date]                  DATETIME NULL,
    [delete_date]                  DATETIME NULL,
    PRIMARY KEY CLUSTERED ([product_pattern_id] ASC),
    CONSTRAINT [FK_product_pattern_product_cycle_type] FOREIGN KEY ([pattern_cycle_type_id]) REFERENCES [product].[pattern_cycle_type] ([pattern_cycle_type_id])
);

