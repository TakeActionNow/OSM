CREATE TABLE [planning].[day_planning_control_item_rel] (
    [day_planning_control_item_id] INT      IDENTITY (1, 1) NOT NULL,
    [planning_control_item_id]     INT      NOT NULL,
    [day_of_week_id]               INT      NOT NULL,
    [item_amount]                  INT      NOT NULL,
    [create_date]                  DATETIME NULL,
    [modify_date]                  DATETIME NULL,
    [delete_date]                  DATETIME NULL,
    CONSTRAINT [PK_day_planning_control_item_rel] PRIMARY KEY CLUSTERED ([day_planning_control_item_id] ASC) WITH (FILLFACTOR = 90),
    CONSTRAINT [FK_day_planning_control_item_day_of_week] FOREIGN KEY ([day_of_week_id]) REFERENCES [global].[day_of_week] ([day_of_week_id]),
    CONSTRAINT [FK_day_planning_control_item_planning_control_item] FOREIGN KEY ([planning_control_item_id]) REFERENCES [planning].[planning_control_item] ([planning_control_item_id])
);

