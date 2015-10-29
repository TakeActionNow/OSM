CREATE TABLE [global].[child_hour_status] (
    [child_hour_status_id]    INT            IDENTITY (1, 1) NOT NULL,
    [child_hour_status_code]  INT            NULL,
    [child_hour_status_value] NVARCHAR (MAX) NOT NULL,
    [is_usable_for_planning]  BIT            CONSTRAINT [DF_child_hour_status_is_usable_for_planning] DEFAULT ((0)) NOT NULL,
    [create_date]             DATETIME       NULL,
    [modify_date]             DATETIME       NULL,
    [delete_date]             DATETIME       NULL,
    CONSTRAINT [PK_finished_hours_status] PRIMARY KEY CLUSTERED ([child_hour_status_id] ASC) WITH (FILLFACTOR = 90)
);

