package com.gs.levelup.character.model.dao;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("characterDao")
public class CharacterDao {

	@Autowired
	private org.mybatis.spring.SqlSessionTemplate sqlSessionTemplateMaria;

	public ArrayList<Character> selectCharacters(int accountId) {
		List<Character> list = sqlSessionTemplateMaria.selectList("charMapper.selectCharacters", accountId);
		return (ArrayList<Character>) list;
	}

	public Character selectCharacter(int charId) {
		return sqlSessionTemplateMaria.selectOne("charMapper.selectCharacter", charId);
	}

	public ArrayList<Character> selectAll() {
		List<Character> list = sqlSessionTemplateMaria.selectList("charMapper.selectAll");
		return (ArrayList<Character>)list;
	}
}
