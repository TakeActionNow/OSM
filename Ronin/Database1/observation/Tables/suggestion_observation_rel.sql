CREATE TABLE [observation].[suggestion_observation_rel] (
    [suggestion_observation_id] INT IDENTITY (1, 1) NOT NULL,
    [suggestion_id]             INT NOT NULL,
    [observation_id]            INT NOT NULL,
    CONSTRAINT [PK_suggestion_observation_rel] PRIMARY KEY CLUSTERED ([suggestion_observation_id] ASC) WITH (FILLFACTOR = 90),
    CONSTRAINT [FK_suggestion_observation_rel_observation] FOREIGN KEY ([observation_id]) REFERENCES [observation].[observation] ([observation_id]),
    CONSTRAINT [FK_suggestion_observation_rel_suggestion] FOREIGN KEY ([suggestion_id]) REFERENCES [observation].[suggestion] ([suggestion_id])
);

