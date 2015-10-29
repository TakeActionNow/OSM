CREATE TABLE [planning].[merge_planning_hours] (
    [merge_planning_hours_id] INT      IDENTITY (1, 1) NOT NULL,
    [merge_planning_id]       INT      NOT NULL,
    [old_planning_hours_id]   INT      NOT NULL,
    [new_planning_hours_id]   INT      NOT NULL,
    [create_date]             DATETIME NULL,
    [modify_date]             DATETIME NULL,
    [delete_date]             DATETIME NULL,
    CONSTRAINT [PK_merge_planning_hours] PRIMARY KEY CLUSTERED ([merge_planning_hours_id] ASC) WITH (FILLFACTOR = 90),
    CONSTRAINT [FK_merge_planning_hours_merge_planning] FOREIGN KEY ([merge_planning_id]) REFERENCES [planning].[merge_planning] ([merge_planning_id]),
    CONSTRAINT [FK_merge_planning_hours_planning_hours] FOREIGN KEY ([new_planning_hours_id]) REFERENCES [planning].[planning_hours] ([planning_hours_id]),
    CONSTRAINT [FK_merge_planning_hours_planning_hours1] FOREIGN KEY ([old_planning_hours_id]) REFERENCES [planning].[planning_hours] ([planning_hours_id])
);

