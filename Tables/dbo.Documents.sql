SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Documents] (
		[Id]                     [uniqueidentifier] NOT NULL ROWGUIDCOL,
		[CreationDate]           [datetimeoffset](7) NOT NULL,
		[CreatedBy]              [uniqueidentifier] NOT NULL,
		[UpdateDate]             [datetimeoffset](7) NULL,
		[UpdatedBy]              [uniqueidentifier] NULL,
		[Title]                  [nvarchar](500) COLLATE Latin1_General_CI_AS NULL,
		[EffectiveFromDate]      [datetime] NOT NULL,
		[EffectiveToDate]        [datetime] NULL,
		[ExpirationLeadTime]     [int] NULL,
		[OriginalFileName]       [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
		[SerializedDocument]     [varbinary](max) FILESTREAM NOT NULL,
		[DocumentCategoryId]     [bigint] NOT NULL,
		[ForeignKey1Id]          [bigint] NOT NULL,
		[ForeignKey2Id]          [bigint] NOT NULL,
		CONSTRAINT [UQ__Document__3214EC0642518A7E]
		UNIQUE
		NONCLUSTERED
		([Id])
		ON [PRIMARY]
) ON [PRIMARY] FILESTREAM_ON [TodaysPhotoShoot]
GO
ALTER TABLE [dbo].[Documents] SET (LOCK_ESCALATION = TABLE)
GO
