CREATE TABLE cities (
    id integer NOT NULL,
    name character varying(255)
);


ALTER TABLE public.cities OWNER TO postgres;

--
-- TOC entry 1939 (class 0 OID 52946)
-- Dependencies: 173
-- Data for Name: cities; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO cities (id, name) VALUES (1, 'Sao Paulo');
INSERT INTO cities (id, name) VALUES (2, 'Natal');
INSERT INTO cities (id, name) VALUES (3, 'Belo Horizonte');
INSERT INTO cities (id, name) VALUES (4, 'Brasilia');
INSERT INTO cities (id, name) VALUES (5, 'Cuiaba');
INSERT INTO cities (id, name) VALUES (6, 'Curitiba');
INSERT INTO cities (id, name) VALUES (7, 'Fortaleza');
INSERT INTO cities (id, name) VALUES (8, 'Manaus');
INSERT INTO cities (id, name) VALUES (9, 'Porto Alegre');
INSERT INTO cities (id, name) VALUES (10, 'Recife');
INSERT INTO cities (id, name) VALUES (11, 'Rio De Janeiro');
INSERT INTO cities (id, name) VALUES (12, 'Salvador');


--
-- TOC entry 1831 (class 2606 OID 52950)
-- Name: pk_id_cities; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY cities
    ADD CONSTRAINT pk_id_cities PRIMARY KEY (id);


-- Completed on 2014-04-01 17:58:54

--
-- PostgreSQL database dump complete
--

