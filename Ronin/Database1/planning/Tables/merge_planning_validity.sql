CREATE TABLE [planning].[merge_planning_validity] (
    [merge_planning_validity_id] INT      IDENTITY (1, 1) NOT NULL,
    [merge_planning_id]          INT      NOT NULL,
    [validity_start_datetime]    DATETIME NOT NULL,
    [validity_end_datetime]      DATETIME NOT NULL,
    [create_date]                DATETIME NULL,
    [modify_date]                DATETIME NULL,
    [delete_date]                DATETIME NULL,
    CONSTRAINT [PK_merge_planning_validity] PRIMARY KEY CLUSTERED ([merge_planning_validity_id] ASC) WITH (FILLFACTOR = 90),
    CONSTRAINT [FK_merge_planning_validity_merge_planning] FOREIGN KEY ([merge_planning_id]) REFERENCES [planning].[merge_planning] ([merge_planning_id])
);

