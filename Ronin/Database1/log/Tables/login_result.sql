CREATE TABLE [log].[login_result] (
    [login_result_id]    INT            IDENTITY (1, 1) NOT NULL,
    [login_result_value] NVARCHAR (100) NOT NULL,
    [create_date]        DATETIME       NULL,
    [modify_date]        DATETIME       NULL,
    [delete_date]        DATETIME       NULL,
    PRIMARY KEY CLUSTERED ([login_result_id] ASC)
);

