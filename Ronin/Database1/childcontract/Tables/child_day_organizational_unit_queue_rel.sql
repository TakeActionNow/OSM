CREATE TABLE [childcontract].[child_day_organizational_unit_queue_rel] (
    [child_day_organizational_unit_queue_id] INT IDENTITY (1, 1) NOT NULL,
    [child_contract_day_validity_id]         INT NOT NULL,
    [organizational_unit_queue_id]           INT NOT NULL,
    PRIMARY KEY CLUSTERED ([child_day_organizational_unit_queue_id] ASC),
    CONSTRAINT [FK_child_day_organizational_unit_queue_rel_child_contract_day_validity] FOREIGN KEY ([child_contract_day_validity_id]) REFERENCES [childcontract].[child_contract_day_validity] ([child_contract_day_validity_id]),
    CONSTRAINT [FK_child_day_organizational_unit_queue_rel_organizational_unit_queue] FOREIGN KEY ([organizational_unit_queue_id]) REFERENCES [organisation].[organizational_unit_queue] ([organizational_unit_queue_id])
);

