package com.CampusQuotient.liveDemo.constraints;

import java.util.Arrays;
import java.util.List;
import java.util.stream.Collectors;

import javax.validation.ConstraintValidator;
import javax.validation.ConstraintValidatorContext;
import javax.validation.Validator;

import org.passay.CharacterData;
import org.passay.CharacterRule;
import org.passay.DictionaryRule;
import org.passay.EnglishCharacterData;
import org.passay.LengthRule;
import org.passay.PasswordData;
import org.passay.PasswordValidator;
import org.passay.RuleResult;
import org.passay.WhitespaceRule;

public class PasswordValidationClass implements ConstraintValidator<Validation, String>{

	@Override
	public void initialize(Validation constraintAnnotation) {
		
	}

	@Override
	public boolean isValid(String value, ConstraintValidatorContext context) {
	PasswordValidator ps = new PasswordValidator(Arrays.asList(
		//validations
		new LengthRule(8,30),
		new CharacterRule(EnglishCharacterData.UpperCase,1),
		new CharacterRule(EnglishCharacterData.LowerCase,1),
		new CharacterRule(EnglishCharacterData.Digit,1),
		new CharacterRule(EnglishCharacterData.Special,1),
		new WhitespaceRule()
		));
	RuleResult res=ps.validate(new PasswordData(value));
	if(res.isValid()) {
		return true;
	}
	List<String> messages=ps.getMessages(res);
	String mesTemplate=messages.stream().collect(Collectors.joining(","));
	context.buildConstraintViolationWithTemplate(mesTemplate)
				.addConstraintViolation()
				.disableDefaultConstraintViolation();
	return false;

	}
	

}
