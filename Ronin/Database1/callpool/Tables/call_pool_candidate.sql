CREATE TABLE [callpool].[call_pool_candidate] (
    [call_pool_candidate_id]      INT            IDENTITY (1, 1) NOT NULL,
    [call_pool_id]                INT            NULL,
    [contact_id]                  INT            NOT NULL,
    [call_pool_status_id]         INT            NOT NULL,
    [call_pool_candidate_comment] NVARCHAR (MAX) NULL,
    [create_date]                 DATETIME       NULL,
    [modify_date]                 DATETIME       NULL,
    [delete_date]                 DATETIME       NULL,
    PRIMARY KEY CLUSTERED ([call_pool_candidate_id] ASC),
    CONSTRAINT [FK_call_pool_candidate_call_pool] FOREIGN KEY ([call_pool_id]) REFERENCES [callpool].[call_pool] ([call_pool_id]),
    CONSTRAINT [FK_call_pool_candidate_call_pool_status] FOREIGN KEY ([call_pool_status_id]) REFERENCES [callpool].[call_pool_status] ([call_pool_status_id]),
    CONSTRAINT [FK_call_pool_candidate_contact] FOREIGN KEY ([contact_id]) REFERENCES [contact].[contact] ([contact_id])
);

