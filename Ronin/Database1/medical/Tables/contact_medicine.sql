CREATE TABLE [medical].[contact_medicine] (
    [contact_medicine_id]  INT      IDENTITY (1, 1) NOT NULL,
    [medicine_id]          INT      NOT NULL,
    [contact_id]           INT      NOT NULL,
    [consumption_quantity] INT      NOT NULL,
    [consumption_note]     TEXT     NULL,
    [create_date]          DATETIME NULL,
    [modify_date]          DATETIME NULL,
    [delete_date]          DATETIME NULL,
    PRIMARY KEY CLUSTERED ([contact_medicine_id] ASC),
    CONSTRAINT [FK_contact_medicine_contact] FOREIGN KEY ([contact_id]) REFERENCES [contact].[contact] ([contact_id]),
    CONSTRAINT [FK_contact_medicine_medicine] FOREIGN KEY ([medicine_id]) REFERENCES [medical].[medicine] ([medicine_id])
);

