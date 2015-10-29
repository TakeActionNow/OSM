CREATE TABLE [global].[operating_system] (
    [operating_system_id]    INT           IDENTITY (1, 1) NOT NULL,
    [operating_system_value] NVARCHAR (50) NOT NULL,
    [create_date]            DATETIME      NULL,
    [modify_date]            DATETIME      NULL,
    [delete_date]            DATETIME      NULL,
    PRIMARY KEY CLUSTERED ([operating_system_id] ASC)
);

