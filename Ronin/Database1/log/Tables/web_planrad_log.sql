CREATE TABLE [log].[web_planrad_log] (
    [web_planrad_log_id]     INT            IDENTITY (1, 1) NOT NULL,
    [tablename]              NVARCHAR (100) NOT NULL,
    [organizational_unit_id] INT            NOT NULL,
    [description]            NVARCHAR (MAX) NOT NULL,
    [create_date]            DATETIME       NULL,
    [delete_date]            DATETIME       NULL,
    PRIMARY KEY CLUSTERED ([web_planrad_log_id] ASC)
);

