package com.CampusQuotient.liveDemo.constraints;

import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

import javax.validation.Constraint;
import javax.validation.Payload;

@Documented
@Constraint(validatedBy=PasswordValidationClass.class)
@Target(ElementType.FIELD)
@Retention(RetentionPolicy.RUNTIME)
public @interface Validation {
	String message() default "INVALID PASSWORD";
	Class<?>[] groups() default{};
	Class<? extends Payload>[] payload() default{};
	
}
