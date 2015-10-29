CREATE TABLE [contact].[contact_qualification_rel] (
    [contact_qualification_id]   INT      IDENTITY (1, 1) NOT NULL,
    [contact_id]                 INT      NOT NULL,
    [qualification_id]           INT      NOT NULL,
    [qualification_achieve_date] DATETIME NULL,
    [qualification_expire_date]  DATETIME NULL,
    [create_date]                DATETIME NULL,
    [delete_date]                DATETIME NULL,
    CONSTRAINT [PK_contact_qualification_rel] PRIMARY KEY CLUSTERED ([contact_qualification_id] ASC) WITH (FILLFACTOR = 90),
    CONSTRAINT [FK_contact_qualification_rel_contact] FOREIGN KEY ([contact_id]) REFERENCES [contact].[contact] ([contact_id]),
    CONSTRAINT [FK_contact_qualification_rel_qualification] FOREIGN KEY ([qualification_id]) REFERENCES [contact].[qualification] ([qualification_id])
);

