CREATE TABLE [observation].[given_answer] (
    [given_answer_id]                INT            IDENTITY (1, 1) NOT NULL,
    [observation_question_answer_id] INT            NULL,
    [contact_id_interviewer]         INT            NULL,
    [contact_id_child]               INT            NULL,
    [answer_comment]                 NVARCHAR (MAX) NULL,
    [create_date]                    DATETIME       NULL,
    [modify_date]                    DATETIME       NULL,
    [delete_date]                    DATETIME       NULL,
    CONSTRAINT [PK_given_answer] PRIMARY KEY CLUSTERED ([given_answer_id] ASC) WITH (FILLFACTOR = 90),
    CONSTRAINT [FK_given_answer_contactChild] FOREIGN KEY ([contact_id_child]) REFERENCES [contact].[contact] ([contact_id]),
    CONSTRAINT [FK_given_answer_contactInterviewer] FOREIGN KEY ([contact_id_interviewer]) REFERENCES [contact].[contact] ([contact_id]),
    CONSTRAINT [FK_given_answer_observation_question_answer_rel] FOREIGN KEY ([observation_question_answer_id]) REFERENCES [observation].[observation_question_answer_rel] ([observation_question_answer_id])
);

