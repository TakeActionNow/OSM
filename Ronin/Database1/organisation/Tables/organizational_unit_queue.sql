CREATE TABLE [organisation].[organizational_unit_queue] (
    [organizational_unit_queue_id] INT      IDENTITY (1, 1) NOT NULL,
    [organizational_unit_id]       INT      NOT NULL,
    [child_contract_id]            INT      NOT NULL,
    [queue_comment]                TEXT     NULL,
    [queue_date]                   DATETIME NULL,
    [create_date]                  DATETIME NULL,
    [modify_date]                  DATETIME NULL,
    [delete_date]                  DATETIME NULL,
    PRIMARY KEY CLUSTERED ([organizational_unit_queue_id] ASC),
    CONSTRAINT [FK_organizational_unit_queue_child_contract_id] FOREIGN KEY ([child_contract_id]) REFERENCES [childcontract].[child_contract] ([child_contract_id]),
    CONSTRAINT [FK_organizational_unit_queue_organizational_unit] FOREIGN KEY ([organizational_unit_id]) REFERENCES [organisation].[organizational_unit] ([organizational_unit_id])
);

