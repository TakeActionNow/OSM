CREATE TABLE [contact].[contact_allergy] (
    [contact_allergy_id]         INT      IDENTITY (1, 1) NOT NULL,
    [contact_id]                 INT      NOT NULL,
    [allergy_id]                 INT      NOT NULL,
    [contact_allergy_note]       TEXT     NULL,
    [contact_allergy_start_date] DATETIME NULL,
    [contact_allergy_end_date]   DATETIME NULL,
    PRIMARY KEY CLUSTERED ([contact_allergy_id] ASC),
    CONSTRAINT [FK_contact_allergy_allergy] FOREIGN KEY ([allergy_id]) REFERENCES [medical].[allergy] ([allergy_id]),
    CONSTRAINT [FK_contact_allergy_contact] FOREIGN KEY ([contact_id]) REFERENCES [contact].[contact] ([contact_id])
);

