CREATE TABLE [organisation].[rule_option] (
    [rule_option_id]      INT           IDENTITY (1, 1) NOT NULL,
    [rule_option_type_id] INT           NULL,
    [rule_option_value]   NVARCHAR (50) NOT NULL,
    [create_date]         DATETIME      NULL,
    [modify_date]         DATETIME      NULL,
    [delete_date]         DATETIME      NULL,
    PRIMARY KEY CLUSTERED ([rule_option_id] ASC),
    CONSTRAINT [FK_rule_option_rule_option_type] FOREIGN KEY ([rule_option_type_id]) REFERENCES [organisation].[rule_option_type] ([rule_option_type_id])
);

