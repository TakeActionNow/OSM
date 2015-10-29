CREATE TABLE [planning].[merge_child_allocation] (
    [merge_child_allocation_id] INT      IDENTITY (1, 1) NOT NULL,
    [merge_planning_id]         INT      NOT NULL,
    [old_child_allocation_id]   INT      NOT NULL,
    [new_child_allocation_id]   INT      NOT NULL,
    [create_date]               DATETIME NULL,
    [modify_date]               DATETIME NULL,
    [delete_date]               DATETIME NULL,
    PRIMARY KEY CLUSTERED ([merge_child_allocation_id] ASC),
    CONSTRAINT [FK_merge_child_allocation_merge_planning] FOREIGN KEY ([merge_planning_id]) REFERENCES [planning].[merge_planning] ([merge_planning_id]),
    CONSTRAINT [FK_merge_child_allocation_new_child_allocation] FOREIGN KEY ([new_child_allocation_id]) REFERENCES [planning].[child_allocation] ([child_allocation_id]),
    CONSTRAINT [FK_merge_child_allocation_old_child_allocation] FOREIGN KEY ([old_child_allocation_id]) REFERENCES [planning].[child_allocation] ([child_allocation_id])
);

