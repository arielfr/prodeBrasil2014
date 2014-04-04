CREATE TABLE results (
    id bigint NOT NULL,
    id_match bigint NOT NULL,
    id_team bigint NOT NULL,
    gol bigint NOT NULL
);


ALTER TABLE public.results OWNER TO postgres;

--
-- TOC entry 1970 (class 0 OID 53348)
-- Dependencies: 185
-- Data for Name: results; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY results (id, id_match, id_team, gol) FROM stdin;
\.


--
-- TOC entry 1860 (class 2606 OID 53351)
-- Name: fk_match; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY results
    ADD CONSTRAINT fk_match FOREIGN KEY (id_match) REFERENCES matches(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 1861 (class 2606 OID 53356)
-- Name: fk_team; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY results
    ADD CONSTRAINT fk_team FOREIGN KEY (id_team) REFERENCES teams(id) ON UPDATE CASCADE ON DELETE CASCADE;
