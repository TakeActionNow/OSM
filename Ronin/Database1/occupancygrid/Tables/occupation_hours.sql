CREATE TABLE [occupancygrid].[occupation_hours] (
    [occupation_hours_id]   INT      IDENTITY (1, 1) NOT NULL,
    [occupation_start_time] TIME (0) NULL,
    [occupation_end_time]   TIME (0) NULL,
    [hour_code_id]          INT      NOT NULL,
    [create_date]           DATETIME NULL,
    [modify_date]           DATETIME NULL,
    [delete_date]           DATETIME NULL,
    CONSTRAINT [PK_occupation_hours] PRIMARY KEY CLUSTERED ([occupation_hours_id] ASC) WITH (FILLFACTOR = 90),
    CONSTRAINT [FK_occupation_hours_hour_code] FOREIGN KEY ([hour_code_id]) REFERENCES [planning].[hour_code] ([hour_code_id])
);

