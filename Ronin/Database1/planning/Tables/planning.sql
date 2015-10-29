CREATE TABLE [planning].[planning] (
    [planning_id]            INT      IDENTITY (1, 1) NOT NULL,
    [organizational_unit_id] INT      NOT NULL,
    [schedule_base_id]       INT      NULL,
    [planning_date]          DATE     NOT NULL,
    [planning_is_locked]     BIT      CONSTRAINT [DF_planning_planning_is_locked] DEFAULT ((0)) NOT NULL,
    [create_date]            DATETIME NULL,
    [modify_date]            DATETIME NULL,
    [delete_date]            DATETIME NULL,
    CONSTRAINT [PK_planning] PRIMARY KEY CLUSTERED ([planning_id] ASC) WITH (FILLFACTOR = 90),
    CONSTRAINT [FK_planning_planning] FOREIGN KEY ([organizational_unit_id]) REFERENCES [organisation].[organizational_unit] ([organizational_unit_id]),
    CONSTRAINT [FK_planning_schedule_base] FOREIGN KEY ([schedule_base_id]) REFERENCES [occupancygrid].[schedule_base] ([schedule_base_id])
);

