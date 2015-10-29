CREATE TABLE [absence].[contact_illness_replacement] (
    [contact_illness_replacement_id]         INT      IDENTITY (1, 1) NOT NULL,
    [day_of_week_id]                         INT      NULL,
    [contact_recovery_id]                    INT      NOT NULL,
    [contact_replacement_id]                 INT      NOT NULL,
    [contact_illness_replacement_start_time] TIME (0) NULL,
    [contact_illness_replacement_end_time]   TIME (0) NULL,
    [create_date]                            DATETIME NULL,
    [modify_date]                            DATETIME NULL,
    [delete_date]                            DATETIME NULL,
    PRIMARY KEY CLUSTERED ([contact_illness_replacement_id] ASC),
    CONSTRAINT [FK_contact_illness_replacement_contact_recovery] FOREIGN KEY ([contact_recovery_id]) REFERENCES [absence].[contact_recovery] ([contact_recovery_id]),
    CONSTRAINT [FK_contact_illness_replacement_contact_replacement] FOREIGN KEY ([contact_replacement_id]) REFERENCES [contact].[contact] ([contact_id]),
    CONSTRAINT [FK_contact_illness_replacement_day_of_week] FOREIGN KEY ([day_of_week_id]) REFERENCES [global].[day_of_week] ([day_of_week_id])
);

