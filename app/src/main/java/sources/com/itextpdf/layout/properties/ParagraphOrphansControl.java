package com.itextpdf.layout.properties;

import com.itextpdf.commons.utils.MessageFormatUtil;
import com.itextpdf.layout.renderer.ParagraphRenderer;
import com.itextpdf.p017io.logs.IoLogMessageConstant;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/* JADX INFO: loaded from: classes6.dex */
public class ParagraphOrphansControl {
    private int minOrphans;

    public ParagraphOrphansControl(int i) {
        this.minOrphans = i;
    }

    public ParagraphOrphansControl setMinAllowedOrphans(int i) {
        this.minOrphans = i;
        return this;
    }

    public int getMinOrphans() {
        return this.minOrphans;
    }

    public void handleViolatedOrphans(ParagraphRenderer paragraphRenderer, String str) {
        Logger logger = LoggerFactory.getLogger((Class<?>) ParagraphOrphansControl.class);
        if (paragraphRenderer.getOccupiedArea() != null && paragraphRenderer.getLines() != null) {
            logger.warn(MessageFormatUtil.format(IoLogMessageConstant.ORPHANS_CONSTRAINT_VIOLATED, Integer.valueOf(paragraphRenderer.getOccupiedArea().getPageNumber()), Integer.valueOf(this.minOrphans), Integer.valueOf(paragraphRenderer.getLines().size()), str));
        } else {
            logger.warn(IoLogMessageConstant.PREMATURE_CALL_OF_HANDLE_VIOLATION_METHOD);
        }
    }
}
