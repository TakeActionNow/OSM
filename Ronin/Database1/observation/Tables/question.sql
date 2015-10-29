CREATE TABLE [observation].[question] (
    [question_id]    INT            IDENTITY (1, 1) NOT NULL,
    [category_id]    INT            NULL,
    [question_value] NVARCHAR (MAX) NULL,
    [create_date]    DATETIME       NULL,
    [modify_date]    DATETIME       NULL,
    [delete_date]    DATETIME       NULL,
    CONSTRAINT [PK_question] PRIMARY KEY CLUSTERED ([question_id] ASC) WITH (FILLFACTOR = 90),
    CONSTRAINT [FK_question_category] FOREIGN KEY ([category_id]) REFERENCES [observation].[category] ([category_id])
);

