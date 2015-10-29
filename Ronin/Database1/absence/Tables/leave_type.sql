CREATE TABLE [absence].[leave_type] (
    [leave_type_id]    INT            IDENTITY (1, 1) NOT NULL,
    [leave_type_value] NVARCHAR (MAX) NOT NULL,
    [create_date]      DATETIME       NULL,
    [modify_date]      DATETIME       NULL,
    [delete_date]      DATETIME       NULL,
    CONSTRAINT [PK_leave_type] PRIMARY KEY CLUSTERED ([leave_type_id] ASC) WITH (FILLFACTOR = 90)
);

