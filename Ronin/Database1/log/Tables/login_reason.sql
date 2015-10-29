﻿CREATE TABLE [log].[login_reason] (
    [login_reason_id]    INT            IDENTITY (1, 1) NOT NULL,
    [login_reason_value] NVARCHAR (100) NOT NULL,
    [create_date]        DATETIME       NULL,
    [modify_date]        DATETIME       NULL,
    [delete_date]        DATETIME       NULL,
    PRIMARY KEY CLUSTERED ([login_reason_id] ASC)
);

