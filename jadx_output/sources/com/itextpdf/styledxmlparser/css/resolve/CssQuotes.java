package com.itextpdf.styledxmlparser.css.resolve;

import com.itextpdf.commons.utils.MessageFormatUtil;
import com.itextpdf.styledxmlparser.css.CommonCssConstants;
import com.itextpdf.styledxmlparser.css.parse.CssDeclarationValueTokenizer;
import com.itextpdf.styledxmlparser.logs.StyledXmlParserLogMessageConstant;
import java.util.ArrayList;
import org.slf4j.LoggerFactory;

/* JADX INFO: loaded from: classes6.dex */
public class CssQuotes {
    private static final String EMPTY_QUOTE = "";
    private ArrayList<String> closeQuotes;
    private ArrayList<String> openQuotes;

    private CssQuotes(ArrayList<String> arrayList, ArrayList<String> arrayList2) {
        this.openQuotes = new ArrayList<>(arrayList);
        this.closeQuotes = new ArrayList<>(arrayList2);
    }

    public static CssQuotes createQuotes(String str, boolean z) {
        boolean z2;
        ArrayList arrayList = new ArrayList(2);
        arrayList.add(new ArrayList());
        arrayList.add(new ArrayList());
        if (str != null) {
            if (str.equals("none")) {
                ((ArrayList) arrayList.get(0)).add("");
                ((ArrayList) arrayList.get(1)).add("");
                return new CssQuotes((ArrayList) arrayList.get(0), (ArrayList) arrayList.get(1));
            }
            CssDeclarationValueTokenizer cssDeclarationValueTokenizer = new CssDeclarationValueTokenizer(str);
            int i = 0;
            while (true) {
                CssDeclarationValueTokenizer.Token nextValidToken = cssDeclarationValueTokenizer.getNextValidToken();
                if (nextValidToken == null) {
                    z2 = false;
                    break;
                }
                if (!nextValidToken.isString()) {
                    z2 = true;
                    break;
                }
                ((ArrayList) arrayList.get(i % 2)).add(nextValidToken.getValue());
                i++;
            }
            if (((ArrayList) arrayList.get(0)).size() == ((ArrayList) arrayList.get(1)).size() && !((ArrayList) arrayList.get(0)).isEmpty() && !z2) {
                return new CssQuotes((ArrayList) arrayList.get(0), (ArrayList) arrayList.get(1));
            }
            LoggerFactory.getLogger((Class<?>) CssQuotes.class).error(MessageFormatUtil.format(StyledXmlParserLogMessageConstant.QUOTES_PROPERTY_INVALID, str));
        }
        if (z) {
            return createDefaultQuotes();
        }
        return null;
    }

    public static CssQuotes createDefaultQuotes() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        arrayList.add("«");
        arrayList2.add("»");
        return new CssQuotes(arrayList, arrayList2);
    }

    public String resolveQuote(String str, AbstractCssContext abstractCssContext) {
        int quotesDepth = abstractCssContext.getQuotesDepth();
        if (CommonCssConstants.OPEN_QUOTE.equals(str)) {
            increaseDepth(abstractCssContext);
            return getQuote(quotesDepth, this.openQuotes);
        }
        if (CommonCssConstants.CLOSE_QUOTE.equals(str)) {
            decreaseDepth(abstractCssContext);
            return getQuote(quotesDepth - 1, this.closeQuotes);
        }
        if (CommonCssConstants.NO_OPEN_QUOTE.equals(str)) {
            increaseDepth(abstractCssContext);
            return "";
        }
        if (!CommonCssConstants.NO_CLOSE_QUOTE.equals(str)) {
            return null;
        }
        decreaseDepth(abstractCssContext);
        return "";
    }

    private void increaseDepth(AbstractCssContext abstractCssContext) {
        abstractCssContext.setQuotesDepth(abstractCssContext.getQuotesDepth() + 1);
    }

    private void decreaseDepth(AbstractCssContext abstractCssContext) {
        if (abstractCssContext.getQuotesDepth() > 0) {
            abstractCssContext.setQuotesDepth(abstractCssContext.getQuotesDepth() - 1);
        }
    }

    private String getQuote(int i, ArrayList<String> arrayList) {
        if (i >= arrayList.size()) {
            return arrayList.get(arrayList.size() - 1);
        }
        if (i < 0) {
            return "";
        }
        return arrayList.get(i);
    }
}
