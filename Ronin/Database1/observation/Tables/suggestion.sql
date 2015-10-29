CREATE TABLE [observation].[suggestion] (
    [suggestion_id]    INT      IDENTITY (1, 1) NOT NULL,
    [suggestion_value] TEXT     NULL,
    [create_date]      DATETIME NULL,
    [modify_date]      DATETIME NULL,
    [delete_date]      DATETIME NULL,
    CONSTRAINT [PK_suggestion] PRIMARY KEY CLUSTERED ([suggestion_id] ASC) WITH (FILLFACTOR = 90)
);

