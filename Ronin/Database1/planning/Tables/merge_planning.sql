CREATE TABLE [planning].[merge_planning] (
    [merge_planning_id]      INT      IDENTITY (1, 1) NOT NULL,
    [organizational_unit_id] INT      NOT NULL,
    [create_date]            DATETIME NULL,
    [modify_date]            DATETIME NULL,
    [delete_date]            DATETIME NULL,
    CONSTRAINT [PK_merge_planning] PRIMARY KEY CLUSTERED ([merge_planning_id] ASC) WITH (FILLFACTOR = 90),
    CONSTRAINT [FK_merge_planning_organizational_unit] FOREIGN KEY ([organizational_unit_id]) REFERENCES [organisation].[organizational_unit] ([organizational_unit_id])
);

