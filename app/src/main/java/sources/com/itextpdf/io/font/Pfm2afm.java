package com.itextpdf.io.font;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.exifinterface.media.ExifInterface;
import androidx.recyclerview.widget.ItemTouchHelper;
import com.facebook.appevents.AppEventsConstants;
import com.facebook.internal.ServerProtocol;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.itextpdf.commons.utils.FileUtil;
import com.itextpdf.forms.xfdf.XfdfConstants;
import com.itextpdf.io.source.RandomAccessFileOrArray;
import com.itextpdf.kernel.xmp.XMPError;
import com.itextpdf.styledxmlparser.css.CommonCssConstants;
import com.itextpdf.svg.SvgConstants;
import java.io.IOException;
import java.io.OutputStream;
import java.io.PrintWriter;
import org.objectweb.asm.Opcodes;
import org.objectweb.asm.signature.SignatureVisitor;

/* JADX INFO: loaded from: classes6.dex */
public final class Pfm2afm {
    private int[] Win2PSStd = {0, 0, 0, 0, Opcodes.MULTIANEWARRAY, Opcodes.IFNULL, Opcodes.IFNONNULL, 0, XMPError.BADRDF, 0, 205, 206, 207, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 32, 33, 34, 35, 36, 37, 38, Opcodes.RET, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, Opcodes.INSTANCEOF, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 0, Opcodes.INVOKESTATIC, Opcodes.IF_ACMPNE, Opcodes.INVOKEINTERFACE, 188, Opcodes.GETSTATIC, Opcodes.PUTSTATIC, Opcodes.MONITOREXIT, Opcodes.ANEWARRAY, 0, Opcodes.IRETURN, 234, 0, 0, 0, 0, 96, 0, Opcodes.TABLESWITCH, Opcodes.INVOKEDYNAMIC, Opcodes.INVOKESPECIAL, Opcodes.RETURN, 208, 196, 0, 0, Opcodes.LRETURN, ItemTouchHelper.Callback.DEFAULT_SWIPE_ANIMATION_DURATION, 0, 0, 0, 0, Opcodes.IF_ICMPLT, Opcodes.IF_ICMPGE, Opcodes.IF_ICMPGT, Opcodes.JSR, Opcodes.IF_ACMPEQ, 0, Opcodes.GOTO, 200, 0, 227, Opcodes.LOOKUPSWITCH, 0, 0, 0, Opcodes.MULTIANEWARRAY, 0, 0, 0, 0, Opcodes.MONITORENTER, 0, Opcodes.INVOKEVIRTUAL, Opcodes.GETFIELD, XMPError.BADXMP, 0, 235, Opcodes.NEW, 0, 0, 0, Opcodes.ATHROW, 0, 0, 0, 0, 0, 0, 225, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 233, 0, 0, 0, 0, 0, 0, 251, 0, 0, 0, 0, 0, 0, 241, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 249, 0, 0, 0, 0, 0, 0, 0};
    private String[] WinChars = {"W00", "W01", "W02", "W03", "macron", "breve", "dotaccent", "W07", "ring", "W09", "W0a", "W0b", "W0c", "W0d", "W0e", "W0f", "hungarumlaut", "ogonek", "caron", "W13", "W14", "W15", "W16", "W17", "W18", "W19", "W1a", "W1b", "W1c", "W1d", "W1e", "W1f", CommonCssConstants.SPACE, "exclam", "quotedbl", "numbersign", "dollar", "percent", "ampersand", "quotesingle", "parenleft", "parenright", "asterisk", "plus", "comma", "hyphen", TypedValues.CycleType.S_WAVE_PERIOD, "slash", "zero", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine", "colon", "semicolon", "less", "equal", "greater", "question", "at", "A", SvgConstants.Attributes.PATH_DATA_BEARING, SvgConstants.Attributes.PATH_DATA_CURVE_TO, "D", ExifInterface.LONGITUDE_EAST, "F", RequestConfiguration.MAX_AD_CONTENT_RATING_G, "H", "I", "J", "K", "L", "M", "N", "O", "P", SvgConstants.Attributes.PATH_DATA_QUAD_CURVE_TO, SvgConstants.Attributes.PATH_DATA_CATMULL_CURVE, "S", "T", "U", "V", ExifInterface.LONGITUDE_WEST, "X", "Y", SvgConstants.Attributes.PATH_DATA_CLOSE_PATH, "bracketleft", "backslash", "bracketright", "asciicircum", "underscore", "grave", "a", SvgConstants.Attributes.PATH_DATA_REL_BEARING, SvgConstants.Attributes.PATH_DATA_REL_CURVE_TO, SvgConstants.Attributes.D, "e", XfdfConstants.F, SvgConstants.Tags.G, SvgConstants.Attributes.PATH_DATA_REL_LINE_TO_H, "i", "j", "k", SvgConstants.Attributes.PATH_DATA_REL_LINE_TO, SvgConstants.Attributes.PATH_DATA_REL_MOVE_TO, "n", "o", "p", "q", "r", SvgConstants.Attributes.PATH_DATA_REL_CURVE_TO_S, SvgConstants.Attributes.PATH_DATA_REL_SHORTHAND_CURVE_TO, "u", SvgConstants.Attributes.PATH_DATA_REL_LINE_TO_V, "w", SvgConstants.Attributes.X, SvgConstants.Attributes.Y, "z", "braceleft", "bar", "braceright", "asciitilde", "W7f", "euro", "W81", "quotesinglbase", "florin", "quotedblbase", "ellipsis", "dagger", "daggerdbl", "circumflex", "perthousand", "Scaron", "guilsinglleft", "OE", "W8d", "Zcaron", "W8f", "W90", "quoteleft", "quoteright", "quotedblleft", "quotedblright", "bullet", "endash", "emdash", "tilde", "trademark", "scaron", "guilsinglright", "oe", "W9d", "zcaron", "Ydieresis", "reqspace", "exclamdown", "cent", "sterling", FirebaseAnalytics.Param.CURRENCY, "yen", "brokenbar", "section", "dieresis", "copyright", "ordfeminine", "guillemotleft", "logicalnot", "syllable", "registered", "macron", "degree", "plusminus", "twosuperior", "threesuperior", "acute", "mu", "paragraph", "periodcentered", "cedilla", "onesuperior", "ordmasculine", "guillemotright", "onequarter", "onehalf", "threequarters", "questiondown", "Agrave", "Aacute", "Acircumflex", "Atilde", "Adieresis", "Aring", "AE", "Ccedilla", "Egrave", "Eacute", "Ecircumflex", "Edieresis", "Igrave", "Iacute", "Icircumflex", "Idieresis", "Eth", "Ntilde", "Ograve", "Oacute", "Ocircumflex", "Otilde", "Odieresis", CommonCssConstants.MULTIPLY, "Oslash", "Ugrave", "Uacute", "Ucircumflex", "Udieresis", "Yacute", "Thorn", "germandbls", "agrave", "aacute", "acircumflex", "atilde", "adieresis", "aring", "ae", "ccedilla", "egrave", "eacute", "ecircumflex", "edieresis", "igrave", "iacute", "icircumflex", "idieresis", "eth", "ntilde", "ograve", "oacute", "ocircumflex", "otilde", "odieresis", "divide", "oslash", "ugrave", "uacute", "ucircumflex", "udieresis", "yacute", "thorn", "ydieresis"};
    private short ascender;
    private short ascent;
    private short avgwidth;
    private int bitoff;
    private int bits;
    private byte brkchar;
    private short capheight;
    private byte charset;
    private int chartab;
    private String copyright;
    private byte defchar;
    private short descender;
    private int device;
    private short extleading;
    private short extlen;
    private int face;
    private int firstchar;
    private int fontname;
    private int h_len;
    private short horres;
    private RandomAccessFileOrArray input;
    private short intleading;
    private boolean isMono;
    private byte italic;
    private int kernpairs;
    private byte kind;
    private int lastchar;
    private short maxwidth;
    private PrintWriter output;
    private byte overs;
    private short pixheight;
    private short pixwidth;
    private short points;
    private int psext;
    private int res1;
    private int res2;
    private short type;
    private byte uline;
    private short verres;
    private short vers;
    private short weight;
    private short widthby;
    private short xheight;

    private Pfm2afm(RandomAccessFileOrArray randomAccessFileOrArray, OutputStream outputStream) throws IOException {
        this.input = randomAccessFileOrArray;
        this.output = FileUtil.createPrintWriter(outputStream, "ISO-8859-1");
    }

    public static void convert(RandomAccessFileOrArray randomAccessFileOrArray, OutputStream outputStream) throws IOException {
        Pfm2afm pfm2afm = new Pfm2afm(randomAccessFileOrArray, outputStream);
        pfm2afm.openpfm();
        pfm2afm.putheader();
        pfm2afm.putchartab();
        pfm2afm.putkerntab();
        pfm2afm.puttrailer();
        pfm2afm.output.flush();
    }

    private String readString(int i) throws IOException {
        byte[] bArr = new byte[i];
        this.input.readFully(bArr);
        int i2 = 0;
        while (i2 < i && bArr[i2] != 0) {
            i2++;
        }
        return new String(bArr, 0, i2, "ISO-8859-1");
    }

    private String readString() throws IOException {
        StringBuilder sb = new StringBuilder();
        while (true) {
            int i = this.input.read();
            if (i > 0) {
                sb.append((char) i);
            } else {
                return sb.toString();
            }
        }
    }

    private void outval(int i) {
        this.output.print(' ');
        this.output.print(i);
    }

    private void outchar(int i, int i2, String str) {
        this.output.print("C ");
        outval(i);
        this.output.print(" ; WX ");
        outval(i2);
        if (str != null) {
            this.output.print(" ; N ");
            this.output.print(str);
        }
        this.output.print(" ;\n");
    }

    private void openpfm() throws IOException {
        int i;
        this.input.seek(0L);
        this.vers = this.input.readShortLE();
        this.h_len = this.input.readIntLE();
        this.copyright = readString(60);
        this.type = this.input.readShortLE();
        this.points = this.input.readShortLE();
        this.verres = this.input.readShortLE();
        this.horres = this.input.readShortLE();
        this.ascent = this.input.readShortLE();
        this.intleading = this.input.readShortLE();
        this.extleading = this.input.readShortLE();
        this.italic = (byte) this.input.read();
        this.uline = (byte) this.input.read();
        this.overs = (byte) this.input.read();
        this.weight = this.input.readShortLE();
        this.charset = (byte) this.input.read();
        this.pixwidth = this.input.readShortLE();
        this.pixheight = this.input.readShortLE();
        this.kind = (byte) this.input.read();
        this.avgwidth = this.input.readShortLE();
        this.maxwidth = this.input.readShortLE();
        this.firstchar = this.input.read();
        this.lastchar = this.input.read();
        this.defchar = (byte) this.input.read();
        this.brkchar = (byte) this.input.read();
        this.widthby = this.input.readShortLE();
        this.device = this.input.readIntLE();
        this.face = this.input.readIntLE();
        this.bits = this.input.readIntLE();
        this.bitoff = this.input.readIntLE();
        this.extlen = this.input.readShortLE();
        this.psext = this.input.readIntLE();
        this.chartab = this.input.readIntLE();
        this.res1 = this.input.readIntLE();
        this.kernpairs = this.input.readIntLE();
        this.res2 = this.input.readIntLE();
        this.fontname = this.input.readIntLE();
        if (this.h_len != this.input.length() || this.extlen != 30 || (i = this.fontname) < 75 || i > 512) {
            throw new IOException("not.a.valid.pfm.file");
        }
        this.input.seek(this.psext + 14);
        this.capheight = this.input.readShortLE();
        this.xheight = this.input.readShortLE();
        this.ascender = this.input.readShortLE();
        this.descender = this.input.readShortLE();
    }

    private void putheader() throws IOException {
        this.output.print("StartFontMetrics 2.0\n");
        if (this.copyright.length() > 0) {
            this.output.print("Comment " + this.copyright + '\n');
        }
        this.output.print("FontName ");
        this.input.seek(this.fontname);
        String string = readString();
        this.output.print(string);
        this.output.print("\nEncodingScheme ");
        if (this.charset != 0) {
            this.output.print("FontSpecific\n");
        } else {
            this.output.print("AdobeStandardEncoding\n");
        }
        this.output.print("FullName " + string.replace(SignatureVisitor.SUPER, ' '));
        int i = this.face;
        if (i != 0) {
            this.input.seek(i);
            this.output.print("\nFamilyName " + readString());
        }
        this.output.print("\nWeight ");
        if (this.weight > 475 || string.toLowerCase().contains("bold")) {
            this.output.print("Bold");
        } else {
            short s = this.weight;
            if ((s < 325 && s != 0) || string.toLowerCase().contains("light")) {
                this.output.print("Light");
            } else if (string.toLowerCase().contains("black")) {
                this.output.print("Black");
            } else {
                this.output.print("Medium");
            }
        }
        this.output.print("\nItalicAngle ");
        if (this.italic != 0 || string.toLowerCase().contains("italic")) {
            this.output.print("-12.00");
        } else {
            this.output.print(AppEventsConstants.EVENT_PARAM_VALUE_NO);
        }
        this.output.print("\nIsFixedPitch ");
        if ((this.kind & 1) == 0 || this.avgwidth == this.maxwidth) {
            this.output.print(ServerProtocol.DIALOG_RETURN_SCOPES_TRUE);
            this.isMono = true;
        } else {
            this.output.print("false");
            this.isMono = false;
        }
        this.output.print("\nFontBBox");
        if (this.isMono) {
            outval(-20);
        } else {
            outval(-100);
        }
        outval(-(this.descender + 5));
        outval(this.maxwidth + 10);
        outval(this.ascent + 5);
        this.output.print("\nCapHeight");
        outval(this.capheight);
        this.output.print("\nXHeight");
        outval(this.xheight);
        this.output.print("\nDescender");
        outval(-this.descender);
        this.output.print("\nAscender");
        outval(this.ascender);
        this.output.print('\n');
    }

    private void putchartab() throws IOException {
        int i = (this.lastchar - this.firstchar) + 1;
        int[] iArr = new int[i];
        this.input.seek(this.chartab);
        for (int i2 = 0; i2 < i; i2++) {
            iArr[i2] = this.input.readUnsignedShortLE();
        }
        int[] iArr2 = new int[256];
        if (this.charset == 0) {
            for (int i3 = this.firstchar; i3 <= this.lastchar; i3++) {
                int i4 = this.Win2PSStd[i3];
                if (i4 != 0) {
                    iArr2[i4] = i3;
                }
            }
        }
        this.output.print("StartCharMetrics");
        outval(i);
        this.output.print('\n');
        if (this.charset != 0) {
            for (int i5 = this.firstchar; i5 <= this.lastchar; i5++) {
                int i6 = this.firstchar;
                if (iArr[i5 - i6] != 0) {
                    outchar(i5, iArr[i5 - i6], null);
                }
            }
        } else {
            for (int i7 = 0; i7 < 256; i7++) {
                int i8 = iArr2[i7];
                if (i8 != 0) {
                    outchar(i7, iArr[i8 - this.firstchar], this.WinChars[i8]);
                    iArr[i8 - this.firstchar] = 0;
                }
            }
            for (int i9 = this.firstchar; i9 <= this.lastchar; i9++) {
                int i10 = this.firstchar;
                if (iArr[i9 - i10] != 0) {
                    outchar(-1, iArr[i9 - i10], this.WinChars[i9]);
                }
            }
        }
        this.output.print("EndCharMetrics\n");
    }

    private void putkerntab() throws IOException {
        int i = this.kernpairs;
        if (i == 0) {
            return;
        }
        this.input.seek(i);
        int unsignedShortLE = this.input.readUnsignedShortLE() * 3;
        int[] iArr = new int[unsignedShortLE];
        int i2 = 0;
        int i3 = 0;
        while (i2 < unsignedShortLE) {
            iArr[i2] = this.input.read();
            int i4 = i2 + 2;
            iArr[i2 + 1] = this.input.read();
            i2 += 3;
            short shortLE = this.input.readShortLE();
            iArr[i4] = shortLE;
            if (shortLE != 0) {
                i3++;
            }
        }
        if (i3 == 0) {
            return;
        }
        this.output.print("StartKernData\nStartKernPairs");
        outval(i3);
        this.output.print('\n');
        for (int i5 = 0; i5 < unsignedShortLE; i5 += 3) {
            int i6 = i5 + 2;
            if (iArr[i6] != 0) {
                this.output.print("KPX ");
                this.output.print(this.WinChars[iArr[i5]]);
                this.output.print(' ');
                this.output.print(this.WinChars[iArr[i5 + 1]]);
                outval(iArr[i6]);
                this.output.print('\n');
            }
        }
        this.output.print("EndKernPairs\nEndKernData\n");
    }

    private void puttrailer() {
        this.output.print("EndFontMetrics\n");
    }
}
