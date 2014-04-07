--
-- TOC entry 1898 (class 2606 OID 172198)
-- Name: fk_city; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY matches
    ADD CONSTRAINT fk_city FOREIGN KEY (id_city) REFERENCES cities(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 1896 (class 2606 OID 172203)
-- Name: fk_group; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY groups_teams
    ADD CONSTRAINT fk_group FOREIGN KEY (id_group) REFERENCES groups(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 1899 (class 2606 OID 172208)
-- Name: fk_group; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY matches
    ADD CONSTRAINT fk_group FOREIGN KEY (id_group) REFERENCES groups(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 1902 (class 2606 OID 172302)
-- Name: fk_match; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY prode
    ADD CONSTRAINT fk_match FOREIGN KEY (id_match) REFERENCES matches(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 1905 (class 2606 OID 172320)
-- Name: fk_match; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY results
    ADD CONSTRAINT fk_match FOREIGN KEY (id_match) REFERENCES matches(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 1903 (class 2606 OID 172307)
-- Name: fk_person; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY prode
    ADD CONSTRAINT fk_person FOREIGN KEY (id_person) REFERENCES person(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 1897 (class 2606 OID 172213)
-- Name: fk_team; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY groups_teams
    ADD CONSTRAINT fk_team FOREIGN KEY (id_team) REFERENCES teams(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 1904 (class 2606 OID 172312)
-- Name: fk_team; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY prode
    ADD CONSTRAINT fk_team FOREIGN KEY (id_team) REFERENCES teams(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 1906 (class 2606 OID 172325)
-- Name: fk_team; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY results
    ADD CONSTRAINT fk_team FOREIGN KEY (id_team) REFERENCES teams(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 1900 (class 2606 OID 172218)
-- Name: fk_team_a; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY matches
    ADD CONSTRAINT fk_team_a FOREIGN KEY (id_team_a) REFERENCES teams(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 1901 (class 2606 OID 172223)
-- Name: fk_team_b; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY matches
    ADD CONSTRAINT fk_team_b FOREIGN KEY (id_team_b) REFERENCES teams(id) ON UPDATE CASCADE ON DELETE CASCADE;