CREATE TABLE [organisation].[organizational_unit_memo_rel] (
    [organizational_unit_memo_id] INT IDENTITY (1, 1) NOT NULL,
    [organizational_unit_id]      INT NOT NULL,
    [memo_id]                     INT NOT NULL,
    PRIMARY KEY CLUSTERED ([organizational_unit_memo_id] ASC),
    CONSTRAINT [FK_organizational_unit_memo_rel_memo] FOREIGN KEY ([memo_id]) REFERENCES [contact].[memo] ([memo_id]),
    CONSTRAINT [FK_organizational_unit_memo_rel_organizational_unit] FOREIGN KEY ([organizational_unit_id]) REFERENCES [organisation].[organizational_unit] ([organizational_unit_id])
);

