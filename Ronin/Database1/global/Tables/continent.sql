CREATE TABLE [global].[continent] (
    [continent_id]   INT           IDENTITY (1, 1) NOT NULL,
    [continent_name] NVARCHAR (50) NULL,
    [create_date]    DATETIME      NULL,
    [modify_date]    DATETIME      NULL,
    [delete_date]    DATETIME      NULL,
    PRIMARY KEY CLUSTERED ([continent_id] ASC)
);

