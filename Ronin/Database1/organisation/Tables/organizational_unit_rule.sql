CREATE TABLE [organisation].[organizational_unit_rule] (
    [organizational_unit_rule_id]        INT             IDENTITY (1, 1) NOT NULL,
    [organizational_unit_id]             INT             NOT NULL,
    [rule_id]                            INT             NOT NULL,
    [organizational_unit_rule_option_id] INT             NULL,
    [organizational_unit_rule_amount]    INT             NULL,
    [organizational_unit_rule_cost]      DECIMAL (10, 2) NULL,
    PRIMARY KEY CLUSTERED ([organizational_unit_rule_id] ASC),
    CONSTRAINT [FK_organizational_unit_rule_organizational_unit] FOREIGN KEY ([organizational_unit_id]) REFERENCES [organisation].[organizational_unit] ([organizational_unit_id]),
    CONSTRAINT [FK_organizational_unit_rule_rule] FOREIGN KEY ([rule_id]) REFERENCES [organisation].[rule] ([rule_id]),
    CONSTRAINT [FK_organizational_unit_rule_rule_option] FOREIGN KEY ([organizational_unit_rule_option_id]) REFERENCES [organisation].[rule_option] ([rule_option_id])
);

