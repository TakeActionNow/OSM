CREATE TABLE [global].[marital_status] (
    [marital_status_id]    INT            IDENTITY (1, 1) NOT NULL,
    [marital_status_value] NVARCHAR (100) NOT NULL,
    [create_date]          DATETIME       NULL,
    [modify_date]          DATETIME       NULL,
    [delete_date]          DATETIME       NULL,
    PRIMARY KEY CLUSTERED ([marital_status_id] ASC)
);

