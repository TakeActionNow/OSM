CREATE TABLE [contact].[conversation_participant_permission_rel] (
    [conversation_participant_permission_id] INT IDENTITY (1, 1) NOT NULL,
    [conversation_participant_id]            INT NOT NULL,
    [permission_id]                          INT NOT NULL,
    CONSTRAINT [PK_conversation_participant_permission_rel] PRIMARY KEY CLUSTERED ([conversation_participant_permission_id] ASC) WITH (FILLFACTOR = 90),
    CONSTRAINT [FK_conversation_participant_permission_rel_conversation_participant_rel] FOREIGN KEY ([conversation_participant_id]) REFERENCES [contact].[conversation_participant_rel] ([conversation_participant_id]),
    CONSTRAINT [FK_conversation_participant_permission_rel_permission] FOREIGN KEY ([permission_id]) REFERENCES [service].[permission] ([permission_id])
);

