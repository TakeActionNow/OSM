CREATE TABLE [log].[login] (
    [login_id]           INT            IDENTITY (1, 1) NOT NULL,
    [emailaddress_id]    INT            NULL,
    [emailaddress_value] NVARCHAR (100) NULL,
    [service_id]         INT            NOT NULL,
    [login_result_id]    INT            NOT NULL,
    [login_reason_id]    INT            NULL,
    [login_date]         DATETIME       NOT NULL,
    [login_ip_address]   NVARCHAR (100) NULL,
    [create_date]        DATETIME       NULL,
    [modify_date]        DATETIME       NULL,
    [delete_date]        DATETIME       NULL,
    PRIMARY KEY CLUSTERED ([login_id] ASC),
    CONSTRAINT [FK_login_emailaddress] FOREIGN KEY ([emailaddress_id]) REFERENCES [contact].[emailaddress] ([emailaddress_id]),
    CONSTRAINT [FK_login_login_reason] FOREIGN KEY ([login_reason_id]) REFERENCES [log].[login_reason] ([login_reason_id]),
    CONSTRAINT [FK_login_login_result] FOREIGN KEY ([login_result_id]) REFERENCES [log].[login_result] ([login_result_id]),
    CONSTRAINT [FK_login_service] FOREIGN KEY ([service_id]) REFERENCES [service].[service] ([service_id])
);

