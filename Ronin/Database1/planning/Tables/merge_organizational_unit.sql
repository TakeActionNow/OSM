CREATE TABLE [planning].[merge_organizational_unit] (
    [merge_organizational_unit_id] INT      IDENTITY (1, 1) NOT NULL,
    [merge_planning_id]            INT      NOT NULL,
    [organizational_unit_id]       INT      NOT NULL,
    [create_date]                  DATETIME NULL,
    [modify_date]                  DATETIME NULL,
    [delete_date]                  DATETIME NULL,
    CONSTRAINT [PK_merge_organizational_unit] PRIMARY KEY CLUSTERED ([merge_organizational_unit_id] ASC) WITH (FILLFACTOR = 90),
    CONSTRAINT [FK_merge_organizational_unit_merge_planning] FOREIGN KEY ([merge_planning_id]) REFERENCES [planning].[merge_planning] ([merge_planning_id]),
    CONSTRAINT [FK_merge_organizational_unit_organizational_unit] FOREIGN KEY ([organizational_unit_id]) REFERENCES [organisation].[organizational_unit] ([organizational_unit_id])
);

