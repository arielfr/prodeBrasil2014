CREATE TABLE results (
    id bigint NOT NULL,
    id_match bigint NOT NULL,
    gol_team_a bigint NOT NULL,
    gol_team_b bigint NOT NULL
);


ALTER TABLE public.results OWNER TO postgres;

--
-- TOC entry 1966 (class 0 OID 53109)
-- Dependencies: 183
-- Data for Name: results; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY results (id, id_match, gol_team_a, gol_team_b) FROM stdin;
\.


--
-- TOC entry 1857 (class 2606 OID 53114)
-- Name: fk_match; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY results
    ADD CONSTRAINT fk_match FOREIGN KEY (id_match) REFERENCES matches(id) ON UPDATE CASCADE ON DELETE CASCADE;