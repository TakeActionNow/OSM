CREATE TABLE [contact].[contact_preference_hours_usual] (
    [contact_preference_hours_usual_id] INT      IDENTITY (1, 1) NOT NULL,
    [organizational_unit_id]            INT      NULL,
    [day_of_week_id]                    INT      NULL,
    [contact_id]                        INT      NULL,
    [preference_start_time]             TIME (0) NULL,
    [preference_end_time]               TIME (0) NULL,
    [create_date]                       DATETIME NULL,
    [delete_date]                       DATETIME NULL,
    CONSTRAINT [PK_contact_preference_hours_usual] PRIMARY KEY CLUSTERED ([contact_preference_hours_usual_id] ASC) WITH (FILLFACTOR = 90),
    CONSTRAINT [FK_contact_preference_hours_usual_contact] FOREIGN KEY ([contact_id]) REFERENCES [contact].[contact] ([contact_id]),
    CONSTRAINT [FK_contact_preference_hours_usual_day_of_week] FOREIGN KEY ([day_of_week_id]) REFERENCES [global].[day_of_week] ([day_of_week_id]),
    CONSTRAINT [FK_contact_preference_hours_usual_organisation] FOREIGN KEY ([organizational_unit_id]) REFERENCES [organisation].[organizational_unit] ([organizational_unit_id])
);

