CREATE TABLE [organisation].[organizational_unit_document_contact_rel] (
    [organizational_unit_document_contact_id] INT      IDENTITY (1, 1) NOT NULL,
    [organizational_unit_document_id]         INT      NOT NULL,
    [contact_id]                              INT      NULL,
    [organizational_unit_id]                  INT      NULL,
    [create_date]                             DATETIME NULL,
    [modify_date]                             DATETIME NULL,
    [delete_date]                             DATETIME NULL,
    PRIMARY KEY CLUSTERED ([organizational_unit_document_contact_id] ASC),
    CONSTRAINT [FK_organizational_unit_document_contact_rel_contact] FOREIGN KEY ([contact_id]) REFERENCES [contact].[contact] ([contact_id]),
    CONSTRAINT [FK_organizational_unit_document_contact_rel_organizational_unit] FOREIGN KEY ([organizational_unit_id]) REFERENCES [organisation].[organizational_unit] ([organizational_unit_id]),
    CONSTRAINT [FK_organizational_unit_document_contact_rel_organizational_unit_document] FOREIGN KEY ([organizational_unit_document_id]) REFERENCES [organisation].[organizational_unit_document] ([organizational_unit_document_id])
);

