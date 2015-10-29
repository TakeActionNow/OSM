CREATE TABLE [absence].[special_leave_replacement] (
    [special_leave_replacement_id] INT      IDENTITY (1, 1) NOT NULL,
    [special_leave_id]             INT      NOT NULL,
    [contact_id]                   INT      NULL,
    [day_of_week_id]               INT      NOT NULL,
    [leave_start_time]             TIME (0) NOT NULL,
    [leave_end_time]               TIME (0) NOT NULL,
    [create_date]                  DATETIME NULL,
    [modify_date]                  DATETIME NULL,
    [delete_date]                  DATETIME NULL,
    PRIMARY KEY CLUSTERED ([special_leave_replacement_id] ASC),
    CONSTRAINT [FK_special_leave_replacement_contact] FOREIGN KEY ([contact_id]) REFERENCES [contact].[contact] ([contact_id]),
    CONSTRAINT [FK_special_leave_replacement_day_of_week] FOREIGN KEY ([day_of_week_id]) REFERENCES [global].[day_of_week] ([day_of_week_id]),
    CONSTRAINT [FK_special_leave_replacement_special_leave] FOREIGN KEY ([special_leave_id]) REFERENCES [absence].[special_leave] ([special_leave_id])
);

