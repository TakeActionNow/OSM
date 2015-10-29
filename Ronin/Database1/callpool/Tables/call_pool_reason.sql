CREATE TABLE [callpool].[call_pool_reason] (
    [call_pool_reason_id]    INT            IDENTITY (1, 1) NOT NULL,
    [organizational_unit_id] INT            NULL,
    [call_pool_reason_value] NVARCHAR (MAX) NOT NULL,
    [create_date]            DATETIME       NULL,
    [modify_date]            DATETIME       NULL,
    [delete_date]            DATETIME       NULL,
    PRIMARY KEY CLUSTERED ([call_pool_reason_id] ASC),
    CONSTRAINT [FK_call_pool_reason_call_pool] FOREIGN KEY ([organizational_unit_id]) REFERENCES [organisation].[organizational_unit] ([organizational_unit_id])
);

