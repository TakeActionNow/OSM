CREATE TABLE [organisation].[preference_type] (
    [preference_type_id]    INT            IDENTITY (1, 1) NOT NULL,
    [preference_type_value] NVARCHAR (100) NOT NULL,
    [create_date]           DATETIME       NULL,
    [modify_date]           DATETIME       NULL,
    [delete_date]           DATETIME       NULL,
    PRIMARY KEY CLUSTERED ([preference_type_id] ASC)
);

