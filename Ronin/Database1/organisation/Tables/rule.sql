CREATE TABLE [organisation].[rule] (
    [rule_id]     INT           IDENTITY (1, 1) NOT NULL,
    [rule_value]  NVARCHAR (50) NOT NULL,
    [create_date] DATETIME      NULL,
    [modify_date] DATETIME      NULL,
    [delete_date] DATETIME      NULL,
    PRIMARY KEY CLUSTERED ([rule_id] ASC)
);

