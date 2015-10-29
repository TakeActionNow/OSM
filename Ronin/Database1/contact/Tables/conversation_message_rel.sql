CREATE TABLE [contact].[conversation_message_rel] (
    [conversation_message_id] INT IDENTITY (1, 1) NOT NULL,
    [conversation_id]         INT NOT NULL,
    [message_id]              INT NOT NULL,
    CONSTRAINT [PK_conversation_message_rel] PRIMARY KEY CLUSTERED ([conversation_message_id] ASC) WITH (FILLFACTOR = 90),
    CONSTRAINT [FK_conversation_message_rel_conversation_message_rel] FOREIGN KEY ([conversation_id]) REFERENCES [contact].[conversation] ([conversation_id]),
    CONSTRAINT [FK_conversation_message_rel_message] FOREIGN KEY ([message_id]) REFERENCES [contact].[message] ([message_id])
);

