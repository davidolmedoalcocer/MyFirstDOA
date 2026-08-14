SELECT TOP (50)
    Id,
    TimeStampUtc,
    [System],
    Server,
    TypeCode,
    Component,
    Message,
    UserId,
    CorrelationId
FROM [TrackGuardLogging].[dbo].[InfoLog] WITH (NOLOCK)
WHERE [System] = 'SSOAPI'
  AND TimeStampUtc >= '2026-08-14T15:17:30'
  AND TimeStampUtc <  '2026-08-14T15:17:34'
  AND (
        CorrelationId = 'fd5ef64b-39f4-4444-8cfd-14c2fe88ee81'
        OR Message LIKE 'VerifyUser login:%'
        OR Message LIKE '%Authenticate this user against AD%'
      )
ORDER BY TimeStampUtc;
