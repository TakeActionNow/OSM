CREATE TABLE [contact].[message] (
    [message_id]      INT      IDENTITY (1, 1) NOT NULL,
    [contact_id]      INT      NOT NULL,
    [message_content] TEXT     NULL,
    [create_date]     DATETIME NULL,
    [modify_date]     DATETIME NULL,
    [delete_date]     DATETIME NULL,
    CONSTRAINT [PK_message] PRIMARY KEY CLUSTERED ([message_id] ASC) WITH (FILLFACTOR = 90),
    CONSTRAINT [FK_message_contact] FOREIGN KEY ([contact_id]) REFERENCES [contact].[contact] ([contact_id])
);

