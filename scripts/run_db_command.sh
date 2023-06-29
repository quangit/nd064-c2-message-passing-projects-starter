export CT_DB_NAME=geoconnections
cat ./db/2020-08-15_init-db.sql | kubectl exec -i $1 -- bash -c "psql -U ct_admin -d geoconnections"
cat ./db/udaconnect_public_person.sql | kubectl exec -i postgres-5c4dbcb7f-rqsnv -- bash -c "psql -U ct_admin -d geoconnections"
cat ./db/udaconnect_public_location.sql | kubectl exec -i postgres-5c4dbcb7f-rqsnv -- bash -c "psql -U ct_admin -d geoconnections"