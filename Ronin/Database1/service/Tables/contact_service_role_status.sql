CREATE TABLE [service].[contact_service_role_status] (
    [contact_service_role_status_id]    INT           IDENTITY (1, 1) NOT NULL,
    [contact_service_role_status_value] NVARCHAR (50) NOT NULL,
    [create_date]                       DATETIME      NULL,
    [modify_date]                       DATETIME      NULL,
    [delete_date]                       DATETIME      NULL,
    PRIMARY KEY CLUSTERED ([contact_service_role_status_id] ASC)
);

