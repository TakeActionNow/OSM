CREATE TABLE [product].[pattern_job_day_rel] (
    [pattern_job_day_id]     INT      IDENTITY (1, 1) NOT NULL,
    [product_pattern_day_id] INT      NOT NULL,
    [job_id]                 INT      NOT NULL,
    [organizational_unit_id] INT      NULL,
    [pattern_start_time]     TIME (0) NOT NULL,
    [pattern_end_time]       TIME (0) NOT NULL,
    [create_date]            DATETIME NULL,
    [modify_date]            DATETIME NULL,
    [delete_date]            DATETIME NULL,
    PRIMARY KEY CLUSTERED ([pattern_job_day_id] ASC),
    CONSTRAINT [FK_pattern_job_day_rel_job] FOREIGN KEY ([job_id]) REFERENCES [organisation].[job] ([job_id]),
    CONSTRAINT [FK_pattern_job_day_rel_organizational_unit] FOREIGN KEY ([organizational_unit_id]) REFERENCES [organisation].[organizational_unit] ([organizational_unit_id]),
    CONSTRAINT [FK_pattern_job_day_rel_product_pattern_day] FOREIGN KEY ([product_pattern_day_id]) REFERENCES [product].[product_pattern_day_rel] ([product_pattern_day_id])
);

