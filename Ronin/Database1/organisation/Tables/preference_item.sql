CREATE TABLE [organisation].[preference_item] (
    [preference_item_id]    INT            IDENTITY (1, 1) NOT NULL,
    [preference_type_id]    INT            NOT NULL,
    [preference_item_value] NVARCHAR (100) NOT NULL,
    [create_date]           DATETIME       NULL,
    [modify_date]           DATETIME       NULL,
    [delete_date]           DATETIME       NULL,
    PRIMARY KEY CLUSTERED ([preference_item_id] ASC),
    CONSTRAINT [FK_preference_item_preference_type] FOREIGN KEY ([preference_type_id]) REFERENCES [organisation].[preference_type] ([preference_type_id])
);

