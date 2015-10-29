CREATE TABLE [observation].[answer] (
    [answer_id]    INT            IDENTITY (1, 1) NOT NULL,
    [answer_value] NVARCHAR (MAX) NULL,
    [create_date]  DATETIME       NULL,
    [modify_date]  DATETIME       NULL,
    [delete_date]  DATETIME       NULL,
    CONSTRAINT [PK_answer] PRIMARY KEY CLUSTERED ([answer_id] ASC) WITH (FILLFACTOR = 90)
);

