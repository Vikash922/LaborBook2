package com.itextpdf.styledxmlparser.css.util;

import com.itextpdf.commons.utils.MessageFormatUtil;
import com.itextpdf.styledxmlparser.logs.StyledXmlParserLogMessageConstant;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/* JADX INFO: loaded from: classes6.dex */
public class EscapeGroup {
    private static final Logger LOGGER = LoggerFactory.getLogger((Class<?>) EscapeGroup.class);
    private final char closeCharacter;
    private int counter = 0;
    private final char openCharacter;

    public EscapeGroup(char c, char c2) {
        this.openCharacter = c;
        this.closeCharacter = c2;
    }

    public EscapeGroup(char c) {
        this.openCharacter = c;
        this.closeCharacter = c;
    }

    boolean isEscaped() {
        return this.counter != 0;
    }

    void processCharacter(char c) {
        char c2 = this.openCharacter;
        char c3 = this.closeCharacter;
        if (c2 == c3) {
            if (c == c2) {
                if (isEscaped()) {
                    this.counter++;
                    return;
                } else {
                    this.counter--;
                    return;
                }
            }
            return;
        }
        if (c == c2) {
            this.counter++;
            return;
        }
        if (c == c3) {
            int i = this.counter - 1;
            this.counter = i;
            if (i < 0) {
                LOGGER.warn(MessageFormatUtil.format(StyledXmlParserLogMessageConstant.INCORRECT_CHARACTER_SEQUENCE, new Object[0]));
                this.counter = 0;
            }
        }
    }
}
