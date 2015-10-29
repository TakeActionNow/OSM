CREATE TABLE [planning].[planning_intermission] (
    [planning_intermission_id]         INT      IDENTITY (1, 1) NOT NULL,
    [planning_hours_id]                INT      NOT NULL,
    [planning_contact_replacement_id]  INT      NULL,
    [planning_intermission_start_time] TIME (0) NOT NULL,
    [planning_intermission_end_time]   TIME (0) NOT NULL,
    [create_date]                      DATETIME NULL,
    [delete_date]                      DATETIME NULL,
    CONSTRAINT [PK_planning_intermission] PRIMARY KEY CLUSTERED ([planning_intermission_id] ASC) WITH (FILLFACTOR = 90),
    CONSTRAINT [FK_planning_intermission_planning] FOREIGN KEY ([planning_hours_id]) REFERENCES [planning].[planning_hours] ([planning_hours_id]),
    CONSTRAINT [FK_planning_intermission_planning_contact_replacement] FOREIGN KEY ([planning_contact_replacement_id]) REFERENCES [planning].[planning_contact_replacement] ([planning_contact_replacement_id])
);

