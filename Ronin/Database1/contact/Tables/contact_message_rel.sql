CREATE TABLE [contact].[contact_message_rel] (
    [contact_message_id] INT      IDENTITY (1, 1) NOT NULL,
    [contact_id]         INT      NOT NULL,
    [message_id]         INT      NOT NULL,
    [read_date]          DATETIME NULL,
    CONSTRAINT [PK_contact_conversation_message_rel] PRIMARY KEY CLUSTERED ([contact_message_id] ASC) WITH (FILLFACTOR = 90),
    CONSTRAINT [FK_contact_message_rel_contact] FOREIGN KEY ([contact_id]) REFERENCES [contact].[contact] ([contact_id]),
    CONSTRAINT [FK_contact_message_rel_message] FOREIGN KEY ([message_id]) REFERENCES [contact].[message] ([message_id])
);

