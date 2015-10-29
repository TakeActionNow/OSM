CREATE TABLE [organisation].[expense] (
    [expense_id]    INT           IDENTITY (1, 1) NOT NULL,
    [expense_value] NVARCHAR (50) NOT NULL,
    [create_date]   DATETIME      NULL,
    [modify_date]   DATETIME      NULL,
    [delete_date]   DATETIME      NULL,
    PRIMARY KEY CLUSTERED ([expense_id] ASC)
);

