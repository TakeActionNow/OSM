CREATE TABLE [organisation].[organizational_unit_associate] (
    [organizational_unit_associate_id] INT IDENTITY (1, 1) NOT NULL,
    [organizational_unit_head_id]      INT NOT NULL,
    [organizational_unit_sub_id]       INT NOT NULL,
    PRIMARY KEY CLUSTERED ([organizational_unit_associate_id] ASC),
    CONSTRAINT [FK_organizational_unit_associate_organizational_unit_head] FOREIGN KEY ([organizational_unit_head_id]) REFERENCES [organisation].[organizational_unit] ([organizational_unit_id]),
    CONSTRAINT [FK_organizational_unit_associate_organizational_unit_sub] FOREIGN KEY ([organizational_unit_sub_id]) REFERENCES [organisation].[organizational_unit] ([organizational_unit_id])
);

