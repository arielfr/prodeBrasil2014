CREATE SEQUENCE logscoring_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


CREATE TABLE logscoring (
    id bigint DEFAULT nextval('logscoring_id_seq'::regclass) NOT NULL,
    datelog timestamp with time zone NOT NULL
);
