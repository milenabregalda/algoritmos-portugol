package com.exemplo;

import javax.persistence.PersistenceException;

public class EmailJaCadastradoException extends PersistenceException {
    public EmailJaCadastradoException(String message) {
        super(message);
    }
}
