CREATE TABLE [contact].[contact_conversation_rel] (
    [contact_conversation_id] INT IDENTITY (1, 1) NOT NULL,
    [contact_id]              INT NOT NULL,
    [conversation_id]         INT NOT NULL,
    CONSTRAINT [PK_contact_conversation_rel] PRIMARY KEY CLUSTERED ([contact_conversation_id] ASC) WITH (FILLFACTOR = 90),
    CONSTRAINT [FK_contact_conversation_rel_contact] FOREIGN KEY ([contact_id]) REFERENCES [contact].[contact] ([contact_id]),
    CONSTRAINT [FK_contact_conversation_rel_conversation] FOREIGN KEY ([conversation_id]) REFERENCES [contact].[conversation] ([conversation_id])
);

