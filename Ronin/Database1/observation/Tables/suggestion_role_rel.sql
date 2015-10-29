CREATE TABLE [observation].[suggestion_role_rel] (
    [suggestion_role_id] INT IDENTITY (1, 1) NOT NULL,
    [suggestion_id]      INT NOT NULL,
    [role_id]            INT NOT NULL,
    CONSTRAINT [PK_suggestion_role_rel] PRIMARY KEY CLUSTERED ([suggestion_role_id] ASC) WITH (FILLFACTOR = 90),
    CONSTRAINT [FK_suggestion_role_rel_role] FOREIGN KEY ([role_id]) REFERENCES [contact].[role] ([role_id]),
    CONSTRAINT [FK_suggestion_role_rel_suggestion] FOREIGN KEY ([suggestion_id]) REFERENCES [observation].[suggestion] ([suggestion_id])
);

