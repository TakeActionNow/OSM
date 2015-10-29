CREATE TABLE [product].[product_pattern_day_rel] (
    [product_pattern_day_id] INT      IDENTITY (1, 1) NOT NULL,
    [day_of_week_id]         INT      NOT NULL,
    [product_pattern_id]     INT      NOT NULL,
    [pattern_day_start_time] TIME (0) NOT NULL,
    [pattern_day_end_time]   TIME (0) NOT NULL,
    [create_date]            DATETIME NULL,
    [modify_date]            DATETIME NULL,
    [delete_date]            DATETIME NULL,
    PRIMARY KEY CLUSTERED ([product_pattern_day_id] ASC),
    CONSTRAINT [FK_product_pattern_day_rel_day_of_week] FOREIGN KEY ([day_of_week_id]) REFERENCES [global].[day_of_week] ([day_of_week_id]),
    CONSTRAINT [FK_product_pattern_day_rel_product_pattern] FOREIGN KEY ([product_pattern_id]) REFERENCES [product].[product_pattern] ([product_pattern_id])
);

