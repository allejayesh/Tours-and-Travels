USE [newtat]
GO

/****** Object:  StoredProcedure [dbo].[mlogin]    Script Date: 01-05-2024 15:18:20 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


ALTER procedure [dbo].[mlogin](
@uname nvarchar(50), @pass nvarchar(50)
--@msg varchar(50)null
)
as begin
--select email , Password from Member
--where email = @uname and Password=@pass

If(isnull(@uname,0)!='')
BEGIN
    If exists(Select email,Password from Member where email=@uname and Password=@pass)
	 BEGIN
	 Select name,email,Password from Member where email=@uname and Password=@pass
	 --set @msg='Login susscessfully'
	END
end

END
GO


