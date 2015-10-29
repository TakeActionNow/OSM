CREATE TABLE [organisation].[organizational_unit_preference_item_rel] (
    [organizational_unit_preference_item_id] INT      IDENTITY (1, 1) NOT NULL,
    [organizational_unit_id]                 INT      NOT NULL,
    [preference_item_id]                     INT      NOT NULL,
    [is_checked]                             BIT      DEFAULT ((0)) NOT NULL,
    [priority_rank]                          INT      NOT NULL,
    [create_date]                            DATETIME NULL,
    [modify_date]                            DATETIME NULL,
    [delete_date]                            DATETIME NULL,
    PRIMARY KEY CLUSTERED ([organizational_unit_preference_item_id] ASC),
    CONSTRAINT [FK_organizational_unit_preference_item_rel_organizational_unit] FOREIGN KEY ([organizational_unit_id]) REFERENCES [organisation].[organizational_unit] ([organizational_unit_id]),
    CONSTRAINT [FK_organizational_unit_preference_item_rel_preference_item] FOREIGN KEY ([preference_item_id]) REFERENCES [organisation].[preference_item] ([preference_item_id])
);

