CREATE TABLE [planning].[planning_control] (
    [planning_control_id]    INT            IDENTITY (1, 1) NOT NULL,
    [planning_control_value] NVARCHAR (MAX) NOT NULL,
    [create_date]            DATETIME       NULL,
    [modify_date]            DATETIME       NULL,
    [delete_date]            DATETIME       NULL,
    CONSTRAINT [PK_planning_control] PRIMARY KEY CLUSTERED ([planning_control_id] ASC) WITH (FILLFACTOR = 90)
);

