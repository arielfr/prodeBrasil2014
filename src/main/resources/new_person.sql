CREATE TABLE person (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    register boolean DEFAULT false NOT NULL,
    saved boolean DEFAULT false NOT NULL,
    id_sector bigint NOT NULL,
    id_country bigint NOT NULL,
    photo character varying(255) NOT NULL
);


ALTER TABLE public.person OWNER TO postgres;

--
-- TOC entry 188 (class 1259 OID 53391)
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
-- TOC entry 1989 (class 0 OID 0)
-- Dependencies: 188
-- Name: person_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE person_id_seq OWNED BY person.id;


--
-- TOC entry 1869 (class 2604 OID 53393)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY person ALTER COLUMN id SET DEFAULT nextval('person_id_seq'::regclass);


--
-- TOC entry 1983 (class 0 OID 53383)
-- Dependencies: 187
-- Data for Name: person; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY person (id, name, email, register, saved, id_sector, id_country, photo) FROM stdin;
\.


--
-- TOC entry 1990 (class 0 OID 0)
-- Dependencies: 188
-- Name: person_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('person_id_seq', 2, true);


--
-- TOC entry 1871 (class 2606 OID 53401)
-- Name: id_pk; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY person
    ADD CONSTRAINT id_pk PRIMARY KEY (id);


--
-- TOC entry 1873 (class 2606 OID 53399)
-- Name: id_unique; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY person
    ADD CONSTRAINT id_unique UNIQUE (id);


--
-- TOC entry 1874 (class 2606 OID 53402)
-- Name: fk_country; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY person
    ADD CONSTRAINT fk_country FOREIGN KEY (id_country) REFERENCES countries(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 1875 (class 2606 OID 53409)
-- Name: fk_sector; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY person
    ADD CONSTRAINT fk_sector FOREIGN KEY (id_sector) REFERENCES sectors(id) ON UPDATE CASCADE ON DELETE CASCADE;
