CREATE TABLE [organisation].[organizational_unit_business_hours_usual] (
    [organizational_unit_business_hours_usual_id] INT      IDENTITY (1, 1) NOT NULL,
    [organizational_unit_id]                      INT      NOT NULL,
    [day_of_week_id]                              INT      NOT NULL,
    [opening_time]                                TIME (0) NOT NULL,
    [closing_time]                                TIME (0) NOT NULL,
    [valid_datetime_start]                        DATETIME NOT NULL,
    [valid_datetime_end]                          DATETIME NULL,
    [create_date]                                 DATETIME NULL,
    [delete_date]                                 DATETIME NULL,
    CONSTRAINT [PK_organisation_business_hours_usual] PRIMARY KEY CLUSTERED ([organizational_unit_business_hours_usual_id] ASC) WITH (FILLFACTOR = 90),
    CONSTRAINT [FK_organisation_business_hours_usual_day_of_week] FOREIGN KEY ([day_of_week_id]) REFERENCES [global].[day_of_week] ([day_of_week_id]),
    CONSTRAINT [FK_organisation_business_hours_usual_organisation] FOREIGN KEY ([organizational_unit_id]) REFERENCES [organisation].[organizational_unit] ([organizational_unit_id])
);

