CREATE TABLE [media].[image] (
    [image_id]            INT              IDENTITY (1, 1) NOT NULL,
    [contact_id_uploader] INT              NOT NULL,
    [image_GUID]          UNIQUEIDENTIFIER NOT NULL,
    [create_date]         DATETIME         NULL,
    [modify_date]         DATETIME         NULL,
    [delete_date]         DATETIME         NULL,
    CONSTRAINT [PK_image] PRIMARY KEY CLUSTERED ([image_id] ASC) WITH (FILLFACTOR = 90),
    CONSTRAINT [FK_image_contact] FOREIGN KEY ([contact_id_uploader]) REFERENCES [contact].[contact] ([contact_id])
);

