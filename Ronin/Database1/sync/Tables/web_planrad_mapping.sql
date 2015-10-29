CREATE TABLE [sync].[web_planrad_mapping] (
    [web_planrad_mapping_id] INT            IDENTITY (1, 1) NOT NULL,
    [pr_table]               NVARCHAR (100) NOT NULL,
    [organizational_unit_id] INT            NOT NULL,
    [web_key]                INT            NOT NULL,
    [web_table]              NVARCHAR (100) NOT NULL,
    [key1]                   INT            NULL,
    [key2]                   INT            NULL,
    [key3]                   INT            NULL,
    [key4]                   INT            NULL,
    [date1]                  DATETIME       NULL,
    [name]                   NVARCHAR (100) NULL,
    [date2]                  DATETIME       NULL,
    [create_date]            DATETIME       NULL,
    [delete_date]            DATETIME       NULL,
    PRIMARY KEY CLUSTERED ([web_planrad_mapping_id] ASC)
);

