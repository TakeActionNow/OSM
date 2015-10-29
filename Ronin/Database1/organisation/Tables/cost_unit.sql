CREATE TABLE [organisation].[cost_unit] (
    [cost_unit_id]          INT            IDENTITY (1, 1) NOT NULL,
    [cost_center_id]        INT            NULL,
    [cost_unit_code]        NVARCHAR (100) NULL,
    [cost_unit_description] NVARCHAR (100) NOT NULL,
    [create_date]           DATETIME       NULL,
    [modify_date]           DATETIME       NULL,
    [delete_date]           DATETIME       NULL,
    PRIMARY KEY CLUSTERED ([cost_unit_id] ASC),
    CONSTRAINT [FK_cost_unit_cost_center] FOREIGN KEY ([cost_center_id]) REFERENCES [organisation].[cost_center] ([cost_center_id])
);

