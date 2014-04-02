CREATE TABLE groups (
    id bigint DEFAULT nextval('groups_id_seq'::regclass) NOT NULL,
    name character varying(255) NOT NULL
);


ALTER TABLE public.groups OWNER TO postgres;

--
-- TOC entry 172 (class 1259 OID 52936)
-- Name: person_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE person_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.person_id_seq OWNER TO postgres;

--
-- TOC entry 1953 (class 0 OID 0)
-- Dependencies: 172
-- Name: person_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE person_id_seq OWNED BY groups.id;


--
-- TOC entry 1948 (class 0 OID 52953)
-- Dependencies: 175
-- Data for Name: groups; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO groups (id, name) VALUES (3, 'A');
INSERT INTO groups (id, name) VALUES (4, 'B');
INSERT INTO groups (id, name) VALUES (5, 'C');
INSERT INTO groups (id, name) VALUES (6, 'D');
INSERT INTO groups (id, name) VALUES (7, 'E');
INSERT INTO groups (id, name) VALUES (8, 'F');
INSERT INTO groups (id, name) VALUES (9, 'G');
INSERT INTO groups (id, name) VALUES (10, 'H');
INSERT INTO groups (id, name) VALUES (11, 'OCTAVOS');
INSERT INTO groups (id, name) VALUES (12, 'CUARTOS');
INSERT INTO groups (id, name) VALUES (13, 'SEMI');
INSERT INTO groups (id, name) VALUES (14, 'TERCERO');
INSERT INTO groups (id, name) VALUES (15, 'FINAL');


--
-- TOC entry 1954 (class 0 OID 0)
-- Dependencies: 172
-- Name: person_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('person_id_seq', 3, true);


--
-- TOC entry 1837 (class 2606 OID 52958)
-- Name: id_pk_groups; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY groups
    ADD CONSTRAINT id_pk_groups PRIMARY KEY (id);


--
-- TOC entry 1839 (class 2606 OID 52960)
-- Name: id_unique_groups; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY groups
    ADD CONSTRAINT id_unique_groups UNIQUE (id);


-- Completed on 2014-04-02 01:08:06

--
-- PostgreSQL database dump complete
--

