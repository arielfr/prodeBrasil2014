CREATE TABLE prode (
    id bigint NOT NULL,
    id_person bigint NOT NULL,
    id_match bigint NOT NULL,
    gol bigint NOT NULL
);


ALTER TABLE public.prode OWNER TO postgres;

--
-- TOC entry 186 (class 1259 OID 53122)
-- Name: prode_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE prode_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.prode_id_seq OWNER TO postgres;

--
-- TOC entry 1978 (class 0 OID 0)
-- Dependencies: 186
-- Name: prode_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE prode_id_seq OWNED BY prode.id;


--
-- TOC entry 1972 (class 0 OID 53119)
-- Dependencies: 185
-- Data for Name: prode; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY prode (id, id_person, id_match, gol) FROM stdin;
\.


--
-- TOC entry 1979 (class 0 OID 0)
-- Dependencies: 186
-- Name: prode_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('prode_id_seq', 1, false);


--
-- TOC entry 1862 (class 2606 OID 53124)
-- Name: fk_match; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY prode
    ADD CONSTRAINT fk_match FOREIGN KEY (id_match) REFERENCES matches(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 1863 (class 2606 OID 53129)
-- Name: fk_person; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY prode
    ADD CONSTRAINT fk_person FOREIGN KEY (id_person) REFERENCES person(id) ON UPDATE CASCADE ON DELETE CASCADE;