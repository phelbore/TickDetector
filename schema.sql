CREATE TABLE sqlite_sequence(name,seq);
CREATE TABLE SYSTEMS(ID integer, NAME varchar(256), X double, Y double, Z double);
CREATE TABLE MSG_STATS('1' integer, '5' integer, '10' integer, '15' integer, '30' integer, '60' integer, '120' integer, '180' integer, '240' integer, '300' integer, '360' integer, '420' integer, '480' integer, '540' integer, '600' integer, 'COUNT' integer, 'OLDEST' integer);
CREATE TABLE IF NOT EXISTS "INFLUENCE"(ROW integer primary key, FACTION varchar(256), SYSTEM integer, INFLUENCE double, FIRST_SEEN text, LAST_SEEN text, COUNT integer, DELTA boolean);
CREATE TABLE INFLUENCE2(
  "ROW" INT,
  FACTION TEXT,
  SYSTEM INT,
  INFLUENCE REAL,
  FIRST_SEEN TEXT,
  LAST_SEEN TEXT,
  COUNT INT,
  DELTA NUM
);
CREATE TABLE IF NOT EXISTS "TICK"(TIME text primary key on conflict ignore);
CREATE TABLE IF NOT EXISTS "RAW"(ROW integer primary key, TIMESTAMP text, GW_TIMESTAMP text, SOFTWARE text, VERSION text, MESSAGE text);
CREATE TABLE IF NOT EXISTS "SOFTWARE"(SOFTWARE text not null, VERSION integer not null, COUNT integer, PRIMARY KEY(SOFTWARE, VERSION));
CREATE UNIQUE INDEX SYSTEM ON SYSTEMS (ID, NAME);
CREATE INDEX FACTIONS ON INFLUENCE  (FACTION, SYSTEM);
