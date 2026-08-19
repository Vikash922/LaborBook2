package com.itextpdf.layout.properties;

import com.itextpdf.commons.utils.MessageFormatUtil;
import com.itextpdf.layout.renderer.ParagraphRenderer;
import com.itextpdf.p017io.logs.IoLogMessageConstant;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/* JADX INFO: loaded from: classes6.dex */
public class ParagraphWidowsControl {
    private int maxLinesToMove;
    private int minWidows;
    private boolean overflowOnWidowsViolation;

    public ParagraphWidowsControl(int i, int i2, boolean z) {
        this.minWidows = i;
        this.maxLinesToMove = i2;
        this.overflowOnWidowsViolation = z;
    }

    public ParagraphWidowsControl setMinAllowedWidows(int i, int i2, boolean z) {
        this.minWidows = i;
        this.maxLinesToMove = i2;
        this.overflowOnWidowsViolation = z;
        return this;
    }

    public int getMinWidows() {
        return this.minWidows;
    }

    public int getMaxLinesToMove() {
        return this.maxLinesToMove;
    }

    public boolean isOverflowOnWidowsViolation() {
        return this.overflowOnWidowsViolation;
    }

    public void handleViolatedWidows(ParagraphRenderer paragraphRenderer, String str) {
        Logger logger = LoggerFactory.getLogger((Class<?>) ParagraphWidowsControl.class);
        if (paragraphRenderer.getOccupiedArea() != null && paragraphRenderer.getLines() != null) {
            logger.warn(MessageFormatUtil.format(IoLogMessageConstant.WIDOWS_CONSTRAINT_VIOLATED, Integer.valueOf(paragraphRenderer.getOccupiedArea().getPageNumber()), Integer.valueOf(this.minWidows), Integer.valueOf(paragraphRenderer.getLines().size()), str));
        } else {
            logger.warn(IoLogMessageConstant.PREMATURE_CALL_OF_HANDLE_VIOLATION_METHOD);
        }
    }
}
