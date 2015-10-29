CREATE TABLE [observation].[observation_question_answer_rel] (
    [observation_question_answer_id] INT        IDENTITY (1, 1) NOT NULL,
    [observation_id]                 INT        NOT NULL,
    [question_id]                    INT        NOT NULL,
    [answer_id]                      INT        NOT NULL,
    [question_weight]                FLOAT (53) NULL,
    [answer_weight]                  FLOAT (53) NULL,
    [question_sequence_number]       INT        NULL,
    CONSTRAINT [PK_observation_question_answer_rel] PRIMARY KEY CLUSTERED ([observation_question_answer_id] ASC) WITH (FILLFACTOR = 90),
    CONSTRAINT [FK_observation_question_answer_rel_answer] FOREIGN KEY ([answer_id]) REFERENCES [observation].[answer] ([answer_id]),
    CONSTRAINT [FK_observation_question_answer_rel_observation] FOREIGN KEY ([observation_id]) REFERENCES [observation].[observation] ([observation_id]),
    CONSTRAINT [FK_observation_question_answer_rel_question] FOREIGN KEY ([question_id]) REFERENCES [observation].[question] ([question_id])
);

