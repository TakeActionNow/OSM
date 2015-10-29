CREATE TABLE [organisation].[organizational_unit_cost_center_rel] (
    [organizational_unit_cost_center_id] INT      IDENTITY (1, 1) NOT NULL,
    [organizational_unit_id]             INT      NULL,
    [cost_center_id]                     INT      NULL,
    [create_date]                        DATETIME NULL,
    [delete_date]                        DATETIME NULL,
    CONSTRAINT [PK_organisation_cost_center_rel] PRIMARY KEY CLUSTERED ([organizational_unit_cost_center_id] ASC) WITH (FILLFACTOR = 90),
    CONSTRAINT [FK_organisation_cost_center_rel_cost_center] FOREIGN KEY ([cost_center_id]) REFERENCES [organisation].[cost_center] ([cost_center_id]),
    CONSTRAINT [FK_organisation_cost_center_rel_organisation] FOREIGN KEY ([organizational_unit_id]) REFERENCES [organisation].[organizational_unit] ([organizational_unit_id])
);

