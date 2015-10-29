CREATE TABLE [contract].[finished_hours_intermission] (
    [finished_hours_intermission_id] INT      IDENTITY (1, 1) NOT NULL,
    [finished_hours_id]              INT      NOT NULL,
    [intermission_start_time]        TIME (0) NOT NULL,
    [intermission_end_time]          TIME (0) NOT NULL,
    [create_date]                    DATETIME NULL,
    [delete_date]                    DATETIME NULL,
    CONSTRAINT [PK_finished_hours_intermission] PRIMARY KEY CLUSTERED ([finished_hours_intermission_id] ASC) WITH (FILLFACTOR = 90),
    CONSTRAINT [FK_finished_hours_intermission_finished_hours] FOREIGN KEY ([finished_hours_id]) REFERENCES [contract].[finished_hours] ([finished_hours_id])
);

