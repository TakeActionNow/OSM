CREATE TABLE [contact].[memo] (
    [memo_id]              INT      IDENTITY (1, 1) NOT NULL,
    [contact_id]           INT      NOT NULL,
    [memo_value]           TEXT     NOT NULL,
    [memo_create_datetime] DATETIME NOT NULL,
    [memo_modify_datetime] DATETIME NULL,
    [create_date]          DATETIME NULL,
    [modify_date]          DATETIME NULL,
    [delete_date]          DATETIME NULL,
    PRIMARY KEY CLUSTERED ([memo_id] ASC),
    CONSTRAINT [FK_memo_contact] FOREIGN KEY ([contact_id]) REFERENCES [contact].[contact] ([contact_id])
);

