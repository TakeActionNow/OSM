CREATE TABLE [absence].[leave_period] (
    [leave_period_id]    INT             IDENTITY (1, 1) NOT NULL,
    [leave_start_date]   DATE            NOT NULL,
    [leave_end_date]     DATE            NULL,
    [leave_period_hours] DECIMAL (10, 2) NULL,
    [leave_comment]      NVARCHAR (255)  NULL,
    [create_date]        DATETIME        NULL,
    [modify_date]        DATETIME        NULL,
    [delete_date]        DATETIME        NULL,
    PRIMARY KEY CLUSTERED ([leave_period_id] ASC)
);

