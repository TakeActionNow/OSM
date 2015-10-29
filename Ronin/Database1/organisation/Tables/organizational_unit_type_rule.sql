CREATE TABLE [organisation].[organizational_unit_type_rule] (
    [organizational_unit_type_rule_id] INT IDENTITY (1, 1) NOT NULL,
    [organizational_unit_id]           INT NOT NULL,
    [organizational_unit_type_id]      INT NOT NULL,
    [rule_organizational_unit_id]      INT NULL,
    PRIMARY KEY CLUSTERED ([organizational_unit_type_rule_id] ASC),
    CONSTRAINT [FK_organizational_unit_type_rule_organizational_unit] FOREIGN KEY ([organizational_unit_id]) REFERENCES [organisation].[organizational_unit] ([organizational_unit_id]),
    CONSTRAINT [FK_organizational_unit_type_rule_organizational_unit_type] FOREIGN KEY ([organizational_unit_type_id]) REFERENCES [organisation].[organizational_unit_type] ([organizational_unit_type_id]),
    CONSTRAINT [FK_organizational_unit_type_rule_rule_organizational_unit] FOREIGN KEY ([rule_organizational_unit_id]) REFERENCES [organisation].[organizational_unit] ([organizational_unit_id])
);

