CREATE TABLE [occupancygrid].[occupation_intermission] (
    [occupation_intermission_id]            INT      IDENTITY (1, 1) NOT NULL,
    [organizational_unit_occupation_job_id] INT      NOT NULL,
    [occupation_intermission_start_time]    TIME (0) NULL,
    [occupation_intermission_end_time]      TIME (0) NULL,
    [create_date]                           DATETIME NULL,
    [modify_date]                           DATETIME NULL,
    [delete_date]                           DATETIME NULL,
    CONSTRAINT [PK_occupation_intermission] PRIMARY KEY CLUSTERED ([occupation_intermission_id] ASC) WITH (FILLFACTOR = 90),
    CONSTRAINT [FK_occupation_intermission_occupation_intermission] FOREIGN KEY ([organizational_unit_occupation_job_id]) REFERENCES [occupancygrid].[schedule_occupation_job_rel] ([organizational_unit_occupation_job_id])
);

