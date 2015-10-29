CREATE TABLE [planning].[planning_control_item] (
    [planning_control_item_id] INT      IDENTITY (1, 1) NOT NULL,
    [organizational_unit_id]   INT      NULL,
    [qualification_id]         INT      NULL,
    [planning_control_id]      INT      NULL,
    [job_id]                   INT      NULL,
    [is_checked]               BIT      CONSTRAINT [DF_planning_control_item_is_checked] DEFAULT ((0)) NOT NULL,
    [create_date]              DATETIME NULL,
    [modify_date]              DATETIME NULL,
    [delete_date]              DATETIME NULL,
    CONSTRAINT [PK_planning_control_item] PRIMARY KEY CLUSTERED ([planning_control_item_id] ASC) WITH (FILLFACTOR = 90),
    CONSTRAINT [FK_planning_control_item_job] FOREIGN KEY ([job_id]) REFERENCES [organisation].[job] ([job_id]),
    CONSTRAINT [FK_planning_control_item_organizational_unit] FOREIGN KEY ([organizational_unit_id]) REFERENCES [organisation].[organizational_unit] ([organizational_unit_id]),
    CONSTRAINT [FK_planning_control_item_planning_control] FOREIGN KEY ([planning_control_id]) REFERENCES [planning].[planning_control] ([planning_control_id]),
    CONSTRAINT [FK_planning_control_item_qualification] FOREIGN KEY ([qualification_id]) REFERENCES [contact].[qualification] ([qualification_id])
);

