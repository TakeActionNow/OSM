CREATE TABLE [organisation].[rule_option_type] (
    [rule_option_type_id]    INT           IDENTITY (1, 1) NOT NULL,
    [rule_option_type_value] NVARCHAR (50) NOT NULL,
    [create_date]            DATETIME      NULL,
    [modify_date]            DATETIME      NULL,
    [delete_date]            DATETIME      NULL,
    PRIMARY KEY CLUSTERED ([rule_option_type_id] ASC)
);

