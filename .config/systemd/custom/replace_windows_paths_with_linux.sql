BEGIN TRANSACTION;

UPDATE series 
SET Path = REPLACE(REPLACE(Path, 'D:\', '/mnt/Secondary/'), '\', '/');

UPDATE SubtitleFiles 
SET RelativePath = REPLACE(REPLACE(RelativePath, 'D:\', '/mnt/Secondary/'), '\', '/');

UPDATE EpisodeFiles 
SET RelativePath = REPLACE(REPLACE(RelativePath, 'D:\', '/mnt/Secondary/'), '\', '/');

UPDATE ExtraFiles 
SET RelativePath = REPLACE(REPLACE(RelativePath, 'D:\', '/mnt/Secondary/'), '\', '/');

UPDATE RootFolders 
SET Path = REPLACE(REPLACE(Path, 'D:\', '/mnt/Secondary/'), '\', '/');

UPDATE Indexers 
SET Settings = json_set(Settings, '$.apiKey', 'REDACTED_ARR');

COMMIT;
