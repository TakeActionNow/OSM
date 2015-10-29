CREATE TABLE [media].[document] (
    [document_id]         INT              IDENTITY (1, 1) NOT NULL,
    [contact_id_uploader] INT              NOT NULL,
    [document_GUID]       UNIQUEIDENTIFIER NOT NULL,
    [create_date]         DATETIME         NULL,
    [modify_date]         DATETIME         NULL,
    [delete_date]         DATETIME         NULL,
    PRIMARY KEY CLUSTERED ([document_id] ASC),
    CONSTRAINT [FK_document_contact] FOREIGN KEY ([contact_id_uploader]) REFERENCES [contact].[contact] ([contact_id])
);

