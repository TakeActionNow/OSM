CREATE TABLE [planning].[prolonged_child_allocation_day_rel] (
    [prolonged_child_allocation_day_id]     INT      IDENTITY (1, 1) NOT NULL,
    [prolonged_child_allocation_id]         INT      NOT NULL,
    [day_of_week_id]                        INT      NULL,
    [child_contract_day_id]                 INT      NULL,
    [prolonged_child_allocation_start_time] TIME (0) NOT NULL,
    [prolonged_child_allocation_end_time]   TIME (0) NOT NULL,
    [create_date]                           DATETIME NULL,
    [modify_date]                           DATETIME NULL,
    [delete_date]                           DATETIME NULL,
    PRIMARY KEY CLUSTERED ([prolonged_child_allocation_day_id] ASC),
    CONSTRAINT [FK_prolonged_child_allocation_day_rel_child_contract_day_rel] FOREIGN KEY ([child_contract_day_id]) REFERENCES [childcontract].[child_contract_day_rel] ([child_contract_day_id]),
    CONSTRAINT [FK_prolonged_child_allocation_day_rel_day_of_week] FOREIGN KEY ([day_of_week_id]) REFERENCES [global].[day_of_week] ([day_of_week_id]),
    CONSTRAINT [FK_prolonged_child_allocation_day_rel_prolonged_child_allocation] FOREIGN KEY ([prolonged_child_allocation_id]) REFERENCES [planning].[prolonged_child_allocation] ([prolonged_child_allocation_id])
);

