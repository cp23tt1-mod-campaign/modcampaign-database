FROM mysql
COPY ./modcampaignDump.sql /docker-entrypoint-initdb.d/