CREATE TABLE [observation].[suggestion_observation_question_answer_rel] (
    [suggestion_observation_question_answer_id] INT IDENTITY (1, 1) NOT NULL,
    [suggestion_id]                             INT NOT NULL,
    [observation_question_answer_id]            INT NOT NULL,
    CONSTRAINT [PK_suggestion_observation_question_answer_rel] PRIMARY KEY CLUSTERED ([suggestion_observation_question_answer_id] ASC) WITH (FILLFACTOR = 90),
    CONSTRAINT [FK_suggestion_observation_question_answer_rel_observation_question_answer_rel] FOREIGN KEY ([observation_question_answer_id]) REFERENCES [observation].[observation_question_answer_rel] ([observation_question_answer_id]),
    CONSTRAINT [FK_suggestion_observation_question_answer_rel_suggestion] FOREIGN KEY ([suggestion_id]) REFERENCES [observation].[suggestion] ([suggestion_id])
);

