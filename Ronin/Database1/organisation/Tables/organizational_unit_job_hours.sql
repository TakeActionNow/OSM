CREATE TABLE [organisation].[organizational_unit_job_hours] (
    [organizational_unit_job_hours_id] INT      IDENTITY (1, 1) NOT NULL,
    [organizational_unit_id]           INT      NOT NULL,
    [job_id]                           INT      NULL,
    [day_of_week_id]                   INT      NOT NULL,
    [selected_organizational_unit_id]  INT      NOT NULL,
    [business_hours_start_time]        TIME (0) NOT NULL,
    [business_hours_end_time]          TIME (0) NOT NULL,
    [create_date]                      DATETIME NULL,
    [modify_date]                      DATETIME NULL,
    [delete_date]                      DATETIME NULL,
    PRIMARY KEY CLUSTERED ([organizational_unit_job_hours_id] ASC),
    CONSTRAINT [FK_organizational_unit_job_hours_day_of_week] FOREIGN KEY ([day_of_week_id]) REFERENCES [global].[day_of_week] ([day_of_week_id]),
    CONSTRAINT [FK_organizational_unit_job_hours_job] FOREIGN KEY ([job_id]) REFERENCES [organisation].[job] ([job_id]),
    CONSTRAINT [FK_organizational_unit_job_hours_organizational_unit] FOREIGN KEY ([organizational_unit_id]) REFERENCES [organisation].[organizational_unit] ([organizational_unit_id]),
    CONSTRAINT [FK_organizational_unit_job_hours_selected_organizational_unit] FOREIGN KEY ([selected_organizational_unit_id]) REFERENCES [organisation].[organizational_unit] ([organizational_unit_id])
);

