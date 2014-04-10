CREATE TABLE sectors (
    id bigint DEFAULT nextval('sector_id_seq'::regclass) NOT NULL,
    id_country bigint NOT NULL,
    name character varying(255) NOT NULL
);


ALTER TABLE public.sectors OWNER TO postgres;

--
-- TOC entry 1976 (class 0 OID 53372)
-- Dependencies: 188
-- Data for Name: sectors; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY sectors (id, id_country, name) FROM stdin;
\.


--
-- TOC entry 1868 (class 2606 OID 53378)
-- Name: fk_country; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY sectors
    ADD CONSTRAINT fk_country FOREIGN KEY (id_country) REFERENCES countries(id) ON UPDATE CASCADE ON DELETE CASCADE;