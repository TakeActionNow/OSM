CREATE TABLE [planning].[planning_hours_status] (
    [planning_hours_status_id]    INT           IDENTITY (1, 1) NOT NULL,
    [planning_hours_status_value] NVARCHAR (50) NOT NULL,
    [create_date]                 DATETIME      NULL,
    [modify_date]                 DATETIME      NULL,
    [delete_date]                 DATETIME      NULL,
    PRIMARY KEY CLUSTERED ([planning_hours_status_id] ASC)
);

