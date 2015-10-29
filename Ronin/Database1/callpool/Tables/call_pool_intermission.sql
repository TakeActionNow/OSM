CREATE TABLE [callpool].[call_pool_intermission] (
    [call_pool_intermission_id]         INT      IDENTITY (1, 1) NOT NULL,
    [call_pool_id]                      INT      NOT NULL,
    [call_pool_intermission_start_time] TIME (0) NOT NULL,
    [call_pool_intermission_end_time]   TIME (0) NOT NULL,
    [create_date]                       DATETIME NULL,
    [modify_date]                       DATETIME NULL,
    [delete_date]                       DATETIME NULL,
    PRIMARY KEY CLUSTERED ([call_pool_intermission_id] ASC),
    CONSTRAINT [FK_call_pool_intermission_call_pool] FOREIGN KEY ([call_pool_id]) REFERENCES [callpool].[call_pool] ([call_pool_id])
);

