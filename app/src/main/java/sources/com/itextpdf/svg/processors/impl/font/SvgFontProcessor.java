package com.itextpdf.svg.processors.impl.font;

import com.itextpdf.commons.utils.MessageFormatUtil;
import com.itextpdf.layout.font.FontInfo;
import com.itextpdf.layout.font.Range;
import com.itextpdf.p017io.font.FontProgramFactory;
import com.itextpdf.p017io.font.PdfEncodings;
import com.itextpdf.styledxmlparser.css.CssFontFaceRule;
import com.itextpdf.styledxmlparser.css.ICssResolver;
import com.itextpdf.styledxmlparser.css.font.CssFontFace;
import com.itextpdf.svg.css.impl.SvgStyleResolver;
import com.itextpdf.svg.processors.impl.SvgProcessorContext;
import java.util.Collection;
import java.util.Iterator;
import org.slf4j.LoggerFactory;

/* JADX INFO: loaded from: classes6.dex */
public class SvgFontProcessor {
    private SvgProcessorContext context;

    public SvgFontProcessor(SvgProcessorContext svgProcessorContext) {
        this.context = svgProcessorContext;
    }

    public void addFontFaceFonts(ICssResolver iCssResolver) {
        if (iCssResolver instanceof SvgStyleResolver) {
            for (CssFontFaceRule cssFontFaceRule : ((SvgStyleResolver) iCssResolver).getFonts()) {
                CssFontFace cssFontFaceCreate = CssFontFace.create(cssFontFaceRule.getProperties());
                if (cssFontFaceCreate != null) {
                    Iterator<CssFontFace.CssFontFaceSrc> it = cssFontFaceCreate.getSources().iterator();
                    while (it.hasNext()) {
                        if (createFont(cssFontFaceCreate.getFontFamily(), it.next(), cssFontFaceRule.resolveUnicodeRange())) {
                            break;
                        }
                    }
                }
                LoggerFactory.getLogger((Class<?>) SvgFontProcessor.class).error(MessageFormatUtil.format("Unable to retrieve font:\n {0}", cssFontFaceRule));
            }
        }
    }

    private boolean createFont(String str, CssFontFace.CssFontFaceSrc cssFontFaceSrc, Range range) {
        if (!CssFontFace.isSupportedFontFormat(cssFontFaceSrc.getFormat())) {
            return false;
        }
        if (cssFontFaceSrc.isLocal()) {
            Collection<FontInfo> collection = this.context.getFontProvider().getFontSet().get(cssFontFaceSrc.getSrc());
            if (collection.size() <= 0) {
                return false;
            }
            Iterator<FontInfo> it = collection.iterator();
            while (it.hasNext()) {
                this.context.addTemporaryFont(it.next(), str);
            }
            return true;
        }
        try {
            byte[] bArrRetrieveBytesFromResource = this.context.getResourceResolver().retrieveBytesFromResource(cssFontFaceSrc.getSrc());
            if (bArrRetrieveBytesFromResource != null) {
                this.context.addTemporaryFont(FontProgramFactory.createFont(bArrRetrieveBytesFromResource, false), PdfEncodings.IDENTITY_H, str, range);
                return true;
            }
        } catch (Exception unused) {
        }
        return false;
    }
}
