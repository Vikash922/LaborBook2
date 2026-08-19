package com.itextpdf.layout.hyphenation;

import com.itextpdf.kernel.utils.XmlProcessorCreator;
import com.itextpdf.p017io.util.ResourceUtil;
import com.laborbook.base.analytics.ConstantEventSources;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import org.objectweb.asm.signature.SignatureVisitor;
import org.xml.sax.Attributes;
import org.xml.sax.InputSource;
import org.xml.sax.SAXException;
import org.xml.sax.SAXParseException;
import org.xml.sax.XMLReader;
import org.xml.sax.helpers.DefaultHandler;

/* JADX INFO: loaded from: classes6.dex */
public class PatternParser extends DefaultHandler {
    static final int ELEM_CLASSES = 1;
    static final int ELEM_EXCEPTIONS = 2;
    static final int ELEM_HYPHEN = 4;
    static final int ELEM_PATTERNS = 3;
    private IPatternConsumer consumer;
    private int currElement;
    private String errMsg;
    private ArrayList exception;
    private boolean hasClasses;
    private char hyphenChar;
    private XMLReader parser;
    private StringBuilder token;

    private PatternParser() {
        this.token = new StringBuilder();
        XMLReader xMLReaderCreateParser = createParser();
        this.parser = xMLReaderCreateParser;
        xMLReaderCreateParser.setContentHandler(this);
        this.parser.setErrorHandler(this);
        this.hyphenChar = SignatureVisitor.SUPER;
    }

    public PatternParser(IPatternConsumer iPatternConsumer) {
        this();
        this.consumer = iPatternConsumer;
    }

    public void parse(String str) throws HyphenationException, FileNotFoundException {
        parse(new FileInputStream(str), str);
    }

    public void parse(InputStream inputStream, String str) throws HyphenationException {
        InputSource inputSource = new InputSource(inputStream);
        inputSource.setSystemId(str);
        try {
            this.parser.parse(inputSource);
        } catch (FileNotFoundException e) {
            throw new HyphenationException("File not found: " + e.getMessage());
        } catch (IOException e2) {
            throw new HyphenationException(e2.getMessage());
        } catch (SAXException unused) {
            throw new HyphenationException(this.errMsg);
        }
    }

    static XMLReader createParser() {
        try {
            return XmlProcessorCreator.createSafeXMLReader(true, false);
        } catch (Exception e) {
            throw new RuntimeException("Couldn't create XMLReader: " + e.getMessage());
        }
    }

    private String readToken(StringBuilder sb) {
        boolean z;
        int i = 0;
        boolean z2 = false;
        while (true) {
            z = true;
            if (i >= sb.length() || !Character.isWhitespace(sb.charAt(i))) {
                break;
            }
            i++;
            z2 = true;
        }
        if (z2) {
            for (int i2 = i; i2 < sb.length(); i2++) {
                sb.setCharAt(i2 - i, sb.charAt(i2));
            }
            sb.setLength(sb.length() - i);
            if (this.token.length() > 0) {
                String string = this.token.toString();
                this.token.setLength(0);
                return string;
            }
        }
        int i3 = 0;
        while (true) {
            if (i3 >= sb.length()) {
                z = false;
                break;
            }
            if (Character.isWhitespace(sb.charAt(i3))) {
                break;
            }
            i3++;
        }
        this.token.append(sb.toString().substring(0, i3));
        for (int i4 = i3; i4 < sb.length(); i4++) {
            sb.setCharAt(i4 - i3, sb.charAt(i4));
        }
        sb.setLength(sb.length() - i3);
        if (z) {
            String string2 = this.token.toString();
            this.token.setLength(0);
            return string2;
        }
        this.token.append((CharSequence) sb);
        return null;
    }

    private static String getPattern(String str) {
        StringBuilder sb = new StringBuilder();
        int length = str.length();
        for (int i = 0; i < length; i++) {
            if (!Character.isDigit(str.charAt(i))) {
                sb.append(str.charAt(i));
            }
        }
        return sb.toString();
    }

    private ArrayList normalizeException(ArrayList arrayList) {
        ArrayList arrayList2 = new ArrayList();
        for (int i = 0; i < arrayList.size(); i++) {
            Object obj = arrayList.get(i);
            if (obj instanceof String) {
                String str = (String) obj;
                StringBuilder sb = new StringBuilder();
                for (int i2 = 0; i2 < str.length(); i2++) {
                    char cCharAt = str.charAt(i2);
                    if (cCharAt != this.hyphenChar) {
                        sb.append(cCharAt);
                    } else {
                        arrayList2.add(sb.toString());
                        sb.setLength(0);
                        arrayList2.add(new Hyphen(new String(new char[]{this.hyphenChar}), null, null));
                    }
                }
                if (sb.length() > 0) {
                    arrayList2.add(sb.toString());
                }
            } else {
                arrayList2.add(obj);
            }
        }
        return arrayList2;
    }

    private String getExceptionWord(ArrayList arrayList) {
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < arrayList.size(); i++) {
            Object obj = arrayList.get(i);
            if (obj instanceof String) {
                sb.append((String) obj);
            } else {
                Hyphen hyphen = (Hyphen) obj;
                if (hyphen.noBreak != null) {
                    sb.append(hyphen.noBreak);
                }
            }
        }
        return sb.toString();
    }

    private static String getInterletterValues(String str) {
        StringBuilder sb = new StringBuilder();
        String str2 = str + "a";
        int length = str2.length();
        int i = 0;
        while (i < length) {
            char cCharAt = str2.charAt(i);
            if (Character.isDigit(cCharAt)) {
                sb.append(cCharAt);
                i++;
            } else {
                sb.append('0');
            }
            i++;
        }
        return sb.toString();
    }

    protected void getExternalClasses() throws SAXException {
        XMLReader xMLReader = this.parser;
        XMLReader xMLReaderCreateParser = createParser();
        this.parser = xMLReaderCreateParser;
        xMLReaderCreateParser.setContentHandler(this);
        this.parser.setErrorHandler(this);
        try {
            try {
                this.parser.parse(new InputSource(ResourceUtil.getResourceStream("com/itextpdf/hyph/external/classes.xml")));
            } catch (IOException e) {
                throw new SAXException(e.getMessage());
            }
        } finally {
            this.parser = xMLReader;
        }
    }

    @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
    public void startElement(String str, String str2, String str3, Attributes attributes) throws SAXException {
        if (str2.equals("hyphen-char")) {
            String value = attributes.getValue("value");
            if (value != null && value.length() == 1) {
                this.hyphenChar = value.charAt(0);
            }
        } else if (str2.equals("classes")) {
            this.currElement = 1;
        } else if (str2.equals("patterns")) {
            if (!this.hasClasses) {
                getExternalClasses();
            }
            this.currElement = 3;
        } else if (str2.equals("exceptions")) {
            if (!this.hasClasses) {
                getExternalClasses();
            }
            this.currElement = 2;
            this.exception = new ArrayList();
        } else if (str2.equals("hyphen")) {
            if (this.token.length() > 0) {
                this.exception.add(this.token.toString());
            }
            this.exception.add(new Hyphen(attributes.getValue("pre"), attributes.getValue(ConstantEventSources.f3418NO), attributes.getValue("post")));
            this.currElement = 4;
        }
        this.token.setLength(0);
    }

    @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
    public void endElement(String str, String str2, String str3) {
        if (this.token.length() > 0) {
            String string = this.token.toString();
            int i = this.currElement;
            if (i == 1) {
                this.consumer.addClass(string);
            } else if (i == 2) {
                this.exception.add(string);
                ArrayList arrayListNormalizeException = normalizeException(this.exception);
                this.exception = arrayListNormalizeException;
                this.consumer.addException(getExceptionWord(arrayListNormalizeException), (ArrayList) this.exception.clone());
            } else if (i == 3) {
                this.consumer.addPattern(getPattern(string), getInterletterValues(string));
            }
            if (this.currElement != 4) {
                this.token.setLength(0);
            }
        }
        int i2 = this.currElement;
        if (i2 == 1) {
            this.hasClasses = true;
        }
        if (i2 == 4) {
            this.currElement = 2;
        } else {
            this.currElement = 0;
        }
    }

    @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
    public void characters(char[] cArr, int i, int i2) {
        StringBuilder sb = new StringBuilder(i2);
        sb.append(cArr, i, i2);
        String token = readToken(sb);
        while (token != null) {
            int i3 = this.currElement;
            if (i3 == 1) {
                this.consumer.addClass(token);
            } else if (i3 == 2) {
                this.exception.add(token);
                ArrayList arrayListNormalizeException = normalizeException(this.exception);
                this.exception = arrayListNormalizeException;
                this.consumer.addException(getExceptionWord(arrayListNormalizeException), (ArrayList) this.exception.clone());
                this.exception.clear();
            } else if (i3 == 3) {
                this.consumer.addPattern(getPattern(token), getInterletterValues(token));
            }
            token = readToken(sb);
        }
    }

    @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ErrorHandler
    public void warning(SAXParseException sAXParseException) {
        this.errMsg = "[Warning] " + getLocationString(sAXParseException) + ": " + sAXParseException.getMessage();
    }

    @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ErrorHandler
    public void error(SAXParseException sAXParseException) {
        this.errMsg = "[Error] " + getLocationString(sAXParseException) + ": " + sAXParseException.getMessage();
    }

    @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ErrorHandler
    public void fatalError(SAXParseException sAXParseException) throws SAXException {
        this.errMsg = "[Fatal Error] " + getLocationString(sAXParseException) + ": " + sAXParseException.getMessage();
        throw sAXParseException;
    }

    private String getLocationString(SAXParseException sAXParseException) {
        StringBuilder sb = new StringBuilder();
        String systemId = sAXParseException.getSystemId();
        if (systemId != null) {
            int iLastIndexOf = systemId.lastIndexOf(47);
            if (iLastIndexOf != -1) {
                systemId = systemId.substring(iLastIndexOf + 1);
            }
            sb.append(systemId);
        }
        sb.append(':');
        sb.append(sAXParseException.getLineNumber());
        sb.append(':');
        sb.append(sAXParseException.getColumnNumber());
        return sb.toString();
    }
}
