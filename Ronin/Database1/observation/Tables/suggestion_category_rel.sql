CREATE TABLE [observation].[suggestion_category_rel] (
    [suggestion_category_id] INT IDENTITY (1, 1) NOT NULL,
    [suggestion_id]          INT NOT NULL,
    [category_id]            INT NOT NULL,
    CONSTRAINT [PK_suggestion_category_rel] PRIMARY KEY CLUSTERED ([suggestion_category_id] ASC) WITH (FILLFACTOR = 90),
    CONSTRAINT [FK_suggestion_category_rel_category] FOREIGN KEY ([category_id]) REFERENCES [observation].[category] ([category_id]),
    CONSTRAINT [FK_suggestion_category_rel_suggestion] FOREIGN KEY ([suggestion_id]) REFERENCES [observation].[suggestion] ([suggestion_id])
);

