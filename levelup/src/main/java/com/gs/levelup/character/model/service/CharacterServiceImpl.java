package com.gs.levelup.character.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gs.levelup.character.model.dao.CharacterDao;

@Service("characterService")
public class CharacterServiceImpl implements CharacterService{
	@Autowired
	private CharacterDao characterDao;

	@Override
	public ArrayList<Character> selectCharacters(int accountId) {
		return characterDao.selectCharacters(accountId);
	}

	@Override
	public Character selectCharacter(int accountId, int charId) {
		return characterDao.selectCharacter(accountId,charId);
	}
	
	
}
