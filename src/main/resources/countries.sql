CREATE TABLE countries (
    id integer DEFAULT nextval('country_id_seq'::regclass) NOT NULL,
    name character varying(255)
);


ALTER TABLE public.countries OWNER TO postgres;

--
-- TOC entry 1977 (class 0 OID 53363)
-- Dependencies: 186
-- Data for Name: countries; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY countries (id, name) FROM stdin;
\.


--
-- TOC entry 1869 (class 2606 OID 53377)
-- Name: id_pk_countries; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY countries
    ADD CONSTRAINT id_pk_countries PRIMARY KEY (id);