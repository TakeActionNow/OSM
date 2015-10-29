CREATE TABLE [callpool].[call_pool_status] (
    [call_pool_status_id]    INT            IDENTITY (1, 1) NOT NULL,
    [call_pool_status_value] NVARCHAR (100) NOT NULL,
    [is_candidate_status]    BIT            NOT NULL,
    [create_date]            DATETIME       NULL,
    [modify_date]            DATETIME       NULL,
    [delete_date]            DATETIME       NULL,
    PRIMARY KEY CLUSTERED ([call_pool_status_id] ASC)
);

