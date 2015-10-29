CREATE TABLE [global].[communication_type] (
    [communication_type_id]    INT           IDENTITY (1, 1) NOT NULL,
    [communication_type_value] NVARCHAR (50) NOT NULL,
    [create_date]              DATETIME      NULL,
    [modify_date]              DATETIME      NULL,
    [delete_date]              DATETIME      NULL,
    PRIMARY KEY CLUSTERED ([communication_type_id] ASC)
);

