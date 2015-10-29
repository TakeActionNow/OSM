CREATE TABLE [contact].[conversation_participant_rel] (
    [conversation_participant_id] INT      IDENTITY (1, 1) NOT NULL,
    [conversation_id]             INT      NOT NULL,
    [contact_id]                  INT      NOT NULL,
    [invite_date]                 DATETIME NULL,
    [join_date]                   DATETIME NULL,
    [delete_date]                 DATETIME NULL,
    CONSTRAINT [PK_conversation_participant_rel] PRIMARY KEY CLUSTERED ([conversation_participant_id] ASC) WITH (FILLFACTOR = 90),
    CONSTRAINT [FK_conversation_participant_rel_conversation] FOREIGN KEY ([conversation_id]) REFERENCES [contact].[conversation] ([conversation_id]),
    CONSTRAINT [FK_conversation_participant_rel_conversation_participant_rel] FOREIGN KEY ([contact_id]) REFERENCES [contact].[contact] ([contact_id])
);

