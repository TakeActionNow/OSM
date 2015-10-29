CREATE TABLE [contact].[conversation] (
    [conversation_id]       INT            IDENTITY (1, 1) NOT NULL,
    [contact_id_owner]      INT            NOT NULL,
    [status_id]             INT            NOT NULL,
    [permission_id]         INT            NOT NULL,
    [conversation_title]    NVARCHAR (MAX) NOT NULL,
    [create_date]           DATETIME       NULL,
    [modify_date]           DATETIME       NULL,
    [delete_date]           DATETIME       NULL,
    [contact_id_deleted_by] INT            NULL,
    CONSTRAINT [PK_conversation] PRIMARY KEY CLUSTERED ([conversation_id] ASC) WITH (FILLFACTOR = 90),
    CONSTRAINT [FK_conversation_contact] FOREIGN KEY ([contact_id_owner]) REFERENCES [contact].[contact] ([contact_id]),
    CONSTRAINT [FK_conversation_contact1] FOREIGN KEY ([contact_id_deleted_by]) REFERENCES [contact].[contact] ([contact_id]),
    CONSTRAINT [FK_conversation_permission] FOREIGN KEY ([permission_id]) REFERENCES [service].[permission] ([permission_id]),
    CONSTRAINT [FK_conversation_status] FOREIGN KEY ([status_id]) REFERENCES [contact].[status] ([status_id])
);

