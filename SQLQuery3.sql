create PROCEDURE dbo.mlogin
    @uname NVARCHAR(50),
    @pass NVARCHAR(50)
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @UserID NVARCHAR(50);

    -- Check if username and password are provided
    IF @uname IS NULL OR @pass IS NULL
    BEGIN
        SELECT 'Invalid input' AS [Message];
        RETURN;
    END

    -- Validate the user credentials
    DECLARE @UserCount INT;

    SELECT @UserCount = COUNT(*) 
    FROM Member 
    WHERE email = @uname AND Password = @pass;

    IF @UserCount > 0
    BEGIN
        -- User authenticated successfully
        SELECT 'Login successful' AS [Message];
        SELECT name, email
        FROM Member
        WHERE email = @uname;

        -- Optionally, you can return additional information or set session variables here
    END
    ELSE
    BEGIN
        -- Invalid username or password
        SELECT 'Invalid username or password' AS [Message];
    END
END