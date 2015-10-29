CREATE TABLE [global].[day_of_week] (
    [day_of_week_id]    INT            IDENTITY (1, 1) NOT NULL,
    [day_of_week_value] NVARCHAR (MAX) NULL,
    [create_date]       DATETIME       NULL,
    [modify_date]       DATETIME       NULL,
    [delete_date]       DATETIME       NULL,
    CONSTRAINT [PK_day_of_week] PRIMARY KEY CLUSTERED ([day_of_week_id] ASC) WITH (FILLFACTOR = 90)
);

