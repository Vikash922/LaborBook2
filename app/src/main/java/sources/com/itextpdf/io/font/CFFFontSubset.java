package com.itextpdf.io.font;

import com.facebook.AuthenticationTokenClaims;
import com.google.common.base.Ascii;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.itextpdf.io.font.CFFFont;
import com.itextpdf.io.source.RandomAccessFileOrArray;
import com.itextpdf.io.util.GenericArray;
import com.itextpdf.kernel.pdf.tagging.StandardRoles;
import com.itextpdf.styledxmlparser.css.CommonCssConstants;
import com.itextpdf.styledxmlparser.css.media.MediaRuleConstants;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Set;
import kotlin.text.Typography;

/* JADX INFO: loaded from: classes6.dex */
public class CFFFontSubset extends CFFFont {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    static final byte ENDCHAR_OP = 14;
    static final byte RETURN_OP = 11;
    Set<Integer> FDArrayUsed;
    int GBias;
    Set<Integer> GlyphsUsed;
    byte[] NewCharStringsIndex;
    byte[] NewGSubrsIndex;
    byte[][] NewLSubrsIndex;
    byte[] NewSubrsIndexNonCID;
    int NumOfHints;
    LinkedList<CFFFont.Item> OutputList;
    List<Integer> glyphsInList;
    Set<Integer> hGSubrsUsed;
    GenericArray<Set<Integer>> hSubrsUsed;
    Set<Integer> hSubrsUsedNonCID;
    List<Integer> lGSubrsUsed;
    GenericArray<List<Integer>> lSubrsUsed;
    List<Integer> lSubrsUsedNonCID;
    static final String[] SubrsFunctions = {"RESERVED_0", "hstem", "RESERVED_2", "vstem", "vmoveto", "rlineto", "hlineto", "vlineto", "rrcurveto", "RESERVED_9", "callsubr", "return", "escape", "RESERVED_13", "endchar", "RESERVED_15", "RESERVED_16", "RESERVED_17", "hstemhm", "hintmask", "cntrmask", "rmoveto", "hmoveto", "vstemhm", "rcurveline", "rlinecurve", "vvcurveto", "hhcurveto", "shortint", "callgsubr", "vhcurveto", "hvcurveto"};
    static final String[] SubrsEscapeFuncs = {"RESERVED_0", "RESERVED_1", "RESERVED_2", MediaRuleConstants.AND, "or", "not", "RESERVED_6", "RESERVED_7", "RESERVED_8", "abs", "add", AuthenticationTokenClaims.JSON_KEY_SUB, "div", "RESERVED_13", "neg", "eq", "RESERVED_16", "RESERVED_17", "drop", "RESERVED_19", "put", "get", "ifelse", "random", "mul", "RESERVED_25", "sqrt", "dup", "exch", FirebaseAnalytics.Param.INDEX, "roll", "RESERVED_31", "RESERVED_32", "RESERVED_33", "hflex", CommonCssConstants.FLEX, "hflex1", "flex1", "RESERVED_REST"};

    CFFFontSubset(byte[] bArr) {
        this(bArr, Collections.emptySet(), true);
    }

    public CFFFontSubset(byte[] bArr, Set<Integer> set) {
        this(bArr, set, false);
    }

    CFFFontSubset(byte[] bArr, Set<Integer> set, boolean z) {
        super(bArr);
        this.FDArrayUsed = new HashSet();
        this.hGSubrsUsed = new HashSet();
        this.lGSubrsUsed = new ArrayList();
        this.hSubrsUsedNonCID = new HashSet();
        this.lSubrsUsedNonCID = new ArrayList();
        this.GBias = 0;
        this.NumOfHints = 0;
        this.GlyphsUsed = set;
        this.glyphsInList = new ArrayList(set);
        for (int i = 0; i < this.fonts.length; i++) {
            seek(this.fonts[i].charstringsOffset);
            this.fonts[i].nglyphs = getCard16();
            seek(this.stringIndexOffset);
            this.fonts[i].nstrings = getCard16() + standardStrings.length;
            this.fonts[i].charstringsOffsets = getIndex(this.fonts[i].charstringsOffset);
            if (z) {
                initGlyphIdToCharacterIdArray(i, this.fonts[i].nglyphs, this.fonts[i].charsetOffset);
            }
            if (this.fonts[i].fdselectOffset >= 0) {
                readFDSelect(i);
                BuildFDArrayUsed(i);
            }
            if (this.fonts[i].isCID) {
                ReadFDArray(i);
            }
            this.fonts[i].CharsetLength = CountCharset(this.fonts[i].charsetOffset, this.fonts[i].nglyphs);
        }
    }

    int CountCharset(int i, int i2) {
        int iCountRange;
        seek(i);
        char card8 = getCard8();
        if (card8 == 0) {
            return (i2 * 2) + 1;
        }
        if (card8 == 1) {
            iCountRange = CountRange(i2, 1) * 3;
        } else {
            if (card8 != 2) {
                return 0;
            }
            iCountRange = CountRange(i2, 2) * 4;
        }
        return iCountRange + 1;
    }

    int CountRange(int i, int i2) {
        char card16;
        int i3 = 0;
        int i4 = 1;
        while (i4 < i) {
            i3++;
            getCard16();
            if (i2 == 1) {
                card16 = getCard8();
            } else {
                card16 = getCard16();
            }
            i4 += card16 + 1;
        }
        return i3;
    }

    protected void readFDSelect(int i) {
        int i2 = this.fonts[i].nglyphs;
        int[] iArr = new int[i2];
        seek(this.fonts[i].fdselectOffset);
        this.fonts[i].FDSelectFormat = getCard8();
        int i3 = this.fonts[i].FDSelectFormat;
        if (i3 == 0) {
            for (int i4 = 0; i4 < i2; i4++) {
                iArr[i4] = getCard8();
            }
            this.fonts[i].FDSelectLength = this.fonts[i].nglyphs + 1;
        } else if (i3 == 3) {
            char card16 = getCard16();
            char card162 = getCard16();
            int i5 = 0;
            int i6 = 0;
            while (i5 < card16) {
                char card8 = getCard8();
                char card163 = getCard16();
                int i7 = card163 - card162;
                for (int i8 = 0; i8 < i7; i8++) {
                    iArr[i6] = card8;
                    i6++;
                }
                i5++;
                card162 = card163;
            }
            this.fonts[i].FDSelectLength = (card16 * 3) + 5;
        }
        this.fonts[i].FDSelect = iArr;
    }

    protected void BuildFDArrayUsed(int i) {
        int[] iArr = this.fonts[i].FDSelect;
        Iterator<Integer> it = this.glyphsInList.iterator();
        while (it.hasNext()) {
            this.FDArrayUsed.add(Integer.valueOf(iArr[it.next().intValue()]));
        }
    }

    protected void ReadFDArray(int i) {
        seek(this.fonts[i].fdarrayOffset);
        this.fonts[i].FDArrayCount = getCard16();
        this.fonts[i].FDArrayOffsize = getCard8();
        if (this.fonts[i].FDArrayOffsize < 4) {
            this.fonts[i].FDArrayOffsize++;
        }
        this.fonts[i].FDArrayOffsets = getIndex(this.fonts[i].fdarrayOffset);
    }

    public byte[] Process(String str) {
        int i = 0;
        while (i < this.fonts.length && !str.equals(this.fonts[i].name)) {
            try {
                try {
                    i++;
                } catch (IOException e) {
                    throw new com.itextpdf.io.exceptions.IOException("I/O exception.", (Throwable) e);
                }
            } finally {
                this.buf.close();
            }
        }
        if (i != this.fonts.length) {
            if (this.gsubrIndexOffset >= 0) {
                this.GBias = CalcBias(this.gsubrIndexOffset, i);
            }
            BuildNewCharString(i);
            BuildNewLGSubrs(i);
            return BuildNewFile(i);
        }
        try {
            this.buf.close();
            return null;
        } catch (Exception unused) {
            return null;
        }
        try {
            this.buf.close();
        } catch (Exception unused2) {
        }
    }

    public byte[] Process() {
        return Process(getNames()[0]);
    }

    protected int CalcBias(int i, int i2) {
        seek(i);
        char card16 = getCard16();
        if (this.fonts[i2].CharstringType == 1) {
            return 0;
        }
        if (card16 < 1240) {
            return 107;
        }
        return card16 < 33900 ? 1131 : 32768;
    }

    protected void BuildNewCharString(int i) throws IOException {
        this.NewCharStringsIndex = BuildNewIndex(this.fonts[i].charstringsOffsets, this.GlyphsUsed, (byte) 14);
    }

    protected void BuildNewLGSubrs(int i) throws IOException {
        if (this.fonts[i].isCID) {
            this.hSubrsUsed = new GenericArray<>(this.fonts[i].fdprivateOffsets.length);
            this.lSubrsUsed = new GenericArray<>(this.fonts[i].fdprivateOffsets.length);
            this.NewLSubrsIndex = new byte[this.fonts[i].fdprivateOffsets.length][];
            this.fonts[i].PrivateSubrsOffset = new int[this.fonts[i].fdprivateOffsets.length];
            this.fonts[i].PrivateSubrsOffsetsArray = new int[this.fonts[i].fdprivateOffsets.length][];
            ArrayList arrayList = new ArrayList(this.FDArrayUsed);
            for (int i2 = 0; i2 < arrayList.size(); i2++) {
                int iIntValue = ((Integer) arrayList.get(i2)).intValue();
                this.hSubrsUsed.set(iIntValue, new HashSet());
                this.lSubrsUsed.set(iIntValue, new ArrayList());
                BuildFDSubrsOffsets(i, iIntValue);
                if (this.fonts[i].PrivateSubrsOffset[iIntValue] >= 0) {
                    BuildSubrUsed(i, iIntValue, this.fonts[i].PrivateSubrsOffset[iIntValue], this.fonts[i].PrivateSubrsOffsetsArray[iIntValue], this.hSubrsUsed.get(iIntValue), this.lSubrsUsed.get(iIntValue));
                    this.NewLSubrsIndex[iIntValue] = BuildNewIndex(this.fonts[i].PrivateSubrsOffsetsArray[iIntValue], this.hSubrsUsed.get(iIntValue), (byte) 11);
                }
            }
        } else if (this.fonts[i].privateSubrs >= 0) {
            this.fonts[i].SubrsOffsets = getIndex(this.fonts[i].privateSubrs);
            BuildSubrUsed(i, -1, this.fonts[i].privateSubrs, this.fonts[i].SubrsOffsets, this.hSubrsUsedNonCID, this.lSubrsUsedNonCID);
        }
        BuildGSubrsUsed(i);
        if (this.fonts[i].privateSubrs >= 0) {
            this.NewSubrsIndexNonCID = BuildNewIndex(this.fonts[i].SubrsOffsets, this.hSubrsUsedNonCID, (byte) 11);
        }
        this.NewGSubrsIndex = BuildNewIndexAndCopyAllGSubrs(this.gsubrOffsets, (byte) 11);
    }

    protected void BuildFDSubrsOffsets(int i, int i2) {
        this.fonts[i].PrivateSubrsOffset[i2] = -1;
        seek(this.fonts[i].fdprivateOffsets[i2]);
        while (getPosition() < this.fonts[i].fdprivateOffsets[i2] + this.fonts[i].fdprivateLengths[i2]) {
            getDictItem();
            if ("Subrs".equals(this.key)) {
                this.fonts[i].PrivateSubrsOffset[i2] = ((Integer) this.args[0]).intValue() + this.fonts[i].fdprivateOffsets[i2];
            }
        }
        if (this.fonts[i].PrivateSubrsOffset[i2] >= 0) {
            this.fonts[i].PrivateSubrsOffsetsArray[i2] = getIndex(this.fonts[i].PrivateSubrsOffset[i2]);
        }
    }

    protected void BuildSubrUsed(int i, int i2, int i3, int[] iArr, Set<Integer> set, List<Integer> list) {
        int iCalcBias = CalcBias(i3, i);
        Iterator<Integer> it = this.glyphsInList.iterator();
        while (it.hasNext()) {
            int iIntValue = it.next().intValue();
            int i4 = this.fonts[i].charstringsOffsets[iIntValue];
            int i5 = this.fonts[i].charstringsOffsets[iIntValue + 1];
            if (i2 >= 0) {
                EmptyStack();
                this.NumOfHints = 0;
                if (this.fonts[i].FDSelect[iIntValue] == i2) {
                    ReadASubr(i4, i5, this.GBias, iCalcBias, set, list, iArr);
                }
            } else {
                ReadASubr(i4, i5, this.GBias, iCalcBias, set, list, iArr);
            }
        }
        for (int i6 = 0; i6 < list.size(); i6++) {
            int iIntValue2 = list.get(i6).intValue();
            if (iIntValue2 < iArr.length - 1 && iIntValue2 >= 0) {
                ReadASubr(iArr[iIntValue2], iArr[iIntValue2 + 1], this.GBias, iCalcBias, set, list, iArr);
            }
        }
    }

    protected void BuildGSubrsUsed(int i) {
        int iCalcBias;
        int size;
        if (this.fonts[i].privateSubrs >= 0) {
            iCalcBias = CalcBias(this.fonts[i].privateSubrs, i);
            size = this.lSubrsUsedNonCID.size();
        } else {
            iCalcBias = 0;
            size = 0;
        }
        for (int i2 = 0; i2 < this.lGSubrsUsed.size(); i2++) {
            int iIntValue = this.lGSubrsUsed.get(i2).intValue();
            if (iIntValue < this.gsubrOffsets.length - 1 && iIntValue >= 0) {
                int i3 = this.gsubrOffsets[iIntValue];
                int i4 = this.gsubrOffsets[iIntValue + 1];
                if (this.fonts[i].isCID) {
                    ReadASubr(i3, i4, this.GBias, 0, this.hGSubrsUsed, this.lGSubrsUsed, null);
                } else {
                    ReadASubr(i3, i4, this.GBias, iCalcBias, this.hSubrsUsedNonCID, this.lSubrsUsedNonCID, this.fonts[i].SubrsOffsets);
                    if (size < this.lSubrsUsedNonCID.size()) {
                        while (size < this.lSubrsUsedNonCID.size()) {
                            int iIntValue2 = this.lSubrsUsedNonCID.get(size).intValue();
                            if (iIntValue2 < this.fonts[i].SubrsOffsets.length - 1 && iIntValue2 >= 0) {
                                ReadASubr(this.fonts[i].SubrsOffsets[iIntValue2], this.fonts[i].SubrsOffsets[iIntValue2 + 1], this.GBias, iCalcBias, this.hSubrsUsedNonCID, this.lSubrsUsedNonCID, this.fonts[i].SubrsOffsets);
                            }
                            size++;
                        }
                        size = this.lSubrsUsedNonCID.size();
                    }
                }
            }
        }
    }

    protected void ReadASubr(int i, int i2, int i3, int i4, Set<Integer> set, List<Integer> list, int[] iArr) {
        EmptyStack();
        this.NumOfHints = 0;
        seek(i);
        while (getPosition() < i2) {
            ReadCommand();
            int position = getPosition();
            Object obj = this.arg_count > 0 ? this.args[this.arg_count - 1] : null;
            int i5 = this.arg_count;
            HandelStack();
            if (this.key != null) {
                String str = this.key;
                str.hashCode();
                switch (str) {
                    case "hintmask":
                    case "cntrmask":
                        int i6 = this.NumOfHints + (i5 / 2);
                        this.NumOfHints = i6;
                        int i7 = i6 / 8;
                        if (i6 % 8 != 0 || i7 == 0) {
                            i7++;
                        }
                        for (int i8 = 0; i8 < i7; i8++) {
                            getCard8();
                        }
                        continue;
                        break;
                    case "callgsubr":
                        if (i5 > 0) {
                            int iIntValue = ((Integer) obj).intValue() + i3;
                            if (!this.hGSubrsUsed.contains(Integer.valueOf(iIntValue))) {
                                this.hGSubrsUsed.add(Integer.valueOf(iIntValue));
                                this.lGSubrsUsed.add(Integer.valueOf(iIntValue));
                            }
                            CalcHints(this.gsubrOffsets[iIntValue], this.gsubrOffsets[iIntValue + 1], i4, i3, iArr);
                            seek(position);
                        } else {
                            continue;
                        }
                        break;
                    case "callsubr":
                        if (i5 > 0) {
                            int iIntValue2 = ((Integer) obj).intValue() + i4;
                            if (!set.contains(Integer.valueOf(iIntValue2))) {
                                set.add(Integer.valueOf(iIntValue2));
                                list.add(Integer.valueOf(iIntValue2));
                            }
                            CalcHints(iArr[iIntValue2], iArr[iIntValue2 + 1], i4, i3, iArr);
                            seek(position);
                            break;
                        } else {
                            break;
                        }
                        break;
                    case "hstem":
                    case "vstem":
                    case "vstemhm":
                    case "hstemhm":
                        this.NumOfHints += i5 / 2;
                        break;
                }
            }
        }
    }

    protected void HandelStack() {
        int iStackOpp = StackOpp();
        if (iStackOpp >= 2) {
            EmptyStack();
            return;
        }
        if (iStackOpp == 1) {
            PushStack();
            return;
        }
        int i = iStackOpp * (-1);
        for (int i2 = 0; i2 < i; i2++) {
            PopStack();
        }
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    protected int StackOpp() {
        byte b;
        String str = this.key;
        str.hashCode();
        switch (str.hashCode()) {
            case -1191590954:
                b = !str.equals("ifelse") ? (byte) -1 : (byte) 0;
                break;
            case -1038692485:
                b = !str.equals("callgsubr") ? (byte) -1 : (byte) 1;
                break;
            case -938285885:
                b = !str.equals("random") ? (byte) -1 : (byte) 2;
                break;
            case -934396624:
                b = !str.equals("return") ? (byte) -1 : (byte) 3;
                break;
            case -171694704:
                b = !str.equals("callsubr") ? (byte) -1 : (byte) 4;
                break;
            case 3244:
                b = !str.equals("eq") ? (byte) -1 : (byte) 5;
                break;
            case 3555:
                b = !str.equals("or") ? (byte) -1 : (byte) 6;
                break;
            case 96370:
                b = !str.equals("abs") ? (byte) -1 : (byte) 7;
                break;
            case 96417:
                b = !str.equals("add") ? (byte) -1 : (byte) 8;
                break;
            case 96727:
                b = !str.equals(MediaRuleConstants.AND) ? (byte) -1 : (byte) 9;
                break;
            case 99473:
                b = !str.equals("div") ? (byte) -1 : (byte) 10;
                break;
            case 99839:
                b = !str.equals("dup") ? (byte) -1 : (byte) 11;
                break;
            case 102230:
                b = !str.equals("get") ? (byte) -1 : Ascii.FF;
                break;
            case 108484:
                b = !str.equals("mul") ? (byte) -1 : Ascii.CR;
                break;
            case 108944:
                b = !str.equals("neg") ? (byte) -1 : (byte) 14;
                break;
            case 109267:
                b = !str.equals("not") ? (byte) -1 : Ascii.SI;
                break;
            case 111375:
                b = !str.equals("put") ? (byte) -1 : (byte) 16;
                break;
            case 114240:
                b = !str.equals(AuthenticationTokenClaims.JSON_KEY_SUB) ? (byte) -1 : (byte) 17;
                break;
            case 3092207:
                b = !str.equals("drop") ? (byte) -1 : Ascii.DC2;
                break;
            case 3127384:
                b = !str.equals("exch") ? (byte) -1 : (byte) 19;
                break;
            case 3506301:
                b = !str.equals("roll") ? (byte) -1 : Ascii.DC4;
                break;
            case 3538208:
                b = !str.equals("sqrt") ? (byte) -1 : Ascii.NAK;
                break;
            case 100346066:
                b = !str.equals(FirebaseAnalytics.Param.INDEX) ? (byte) -1 : Ascii.SYN;
                break;
            default:
                b = -1;
                break;
        }
        switch (b) {
            case 0:
                return -3;
            case 1:
            case 4:
            case 5:
            case 6:
            case 8:
            case 9:
            case 10:
            case 13:
            case 17:
            case 18:
                return -1;
            case 2:
            case 11:
                return 1;
            case 3:
            case 7:
            case 12:
            case 14:
            case 15:
            case 19:
            case 21:
            case 22:
                return 0;
            case 16:
            case 20:
                return -2;
            default:
                return 2;
        }
    }

    protected void EmptyStack() {
        for (int i = 0; i < this.arg_count; i++) {
            this.args[i] = null;
        }
        this.arg_count = 0;
    }

    protected void PopStack() {
        if (this.arg_count > 0) {
            this.args[this.arg_count - 1] = null;
            this.arg_count--;
        }
    }

    protected void PushStack() {
        this.arg_count++;
    }

    protected void ReadCommand() {
        this.key = null;
        boolean z = false;
        while (!z) {
            char card8 = getCard8();
            if (card8 == 28) {
                this.args[this.arg_count] = Integer.valueOf((getCard8() << '\b') | getCard8());
                this.arg_count++;
            } else if (card8 >= ' ' && card8 <= 246) {
                this.args[this.arg_count] = Integer.valueOf(card8 - 139);
                this.arg_count++;
            } else if (card8 >= 247 && card8 <= 250) {
                this.args[this.arg_count] = Integer.valueOf(((card8 - 247) * 256) + getCard8() + 108);
                this.arg_count++;
            } else if (card8 >= 251 && card8 <= 254) {
                this.args[this.arg_count] = Integer.valueOf((((-(card8 - 251)) * 256) - getCard8()) - 108);
                this.arg_count++;
            } else if (card8 == 255) {
                this.args[this.arg_count] = Integer.valueOf((getCard8() << 24) | (getCard8() << 16) | (getCard8() << '\b') | getCard8());
                this.arg_count++;
            } else if (card8 <= 31 && card8 != 28) {
                if (card8 == '\f') {
                    int card82 = getCard8();
                    String[] strArr = SubrsEscapeFuncs;
                    if (card82 > strArr.length - 1) {
                        card82 = strArr.length - 1;
                    }
                    this.key = strArr[card82];
                } else {
                    this.key = SubrsFunctions[card8];
                }
                z = true;
            }
        }
    }

    protected int CalcHints(int i, int i2, int i3, int i4, int[] iArr) {
        int position;
        Object obj;
        int i5;
        int i6;
        seek(i);
        while (getPosition() < i2) {
            ReadCommand();
            position = getPosition();
            obj = this.arg_count > 0 ? this.args[this.arg_count - 1] : null;
            i5 = this.arg_count;
            HandelStack();
            String str = this.key;
            str.hashCode();
            switch (str) {
                case "hintmask":
                case "cntrmask":
                    int i7 = this.NumOfHints;
                    int i8 = i7 / 8;
                    if (i7 % 8 != 0 || i8 == 0) {
                        i8++;
                    }
                    for (i6 = 0; i6 < i8; i6++) {
                        getCard8();
                    }
                    break;
                case "callgsubr":
                    if (i5 > 0) {
                        int iIntValue = ((Integer) obj).intValue() + i4;
                        CalcHints(this.gsubrOffsets[iIntValue], this.gsubrOffsets[iIntValue + 1], i3, i4, iArr);
                        seek(position);
                        break;
                    } else {
                        break;
                    }
                    break;
                case "callsubr":
                    if (i5 > 0) {
                        int iIntValue2 = ((Integer) obj).intValue() + i3;
                        CalcHints(iArr[iIntValue2], iArr[iIntValue2 + 1], i3, i4, iArr);
                        seek(position);
                        break;
                    } else {
                        break;
                    }
                    break;
                case "hstem":
                case "vstem":
                case "vstemhm":
                case "hstemhm":
                    this.NumOfHints += i5 / 2;
                    break;
            }
        }
        return this.NumOfHints;
    }

    protected byte[] BuildNewIndex(int[] iArr, Set<Integer> set, byte b) throws IOException {
        int[] iArr2 = new int[iArr.length];
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        for (int i4 = 0; i4 < iArr.length; i4++) {
            iArr2[i4] = i2;
            if (set.contains(Integer.valueOf(i4))) {
                i2 += iArr[i4 + 1] - iArr[i4];
            } else {
                i3++;
            }
        }
        byte[] bArr = new byte[i2 + i3];
        int i5 = 0;
        while (i < iArr.length - 1) {
            int i6 = iArr2[i];
            int i7 = i + 1;
            int i8 = iArr2[i7];
            int i9 = i6 + i5;
            iArr2[i] = i9;
            if (i6 != i8) {
                this.buf.seek(iArr[i]);
                this.buf.readFully(bArr, i9, i8 - i6);
            } else {
                bArr[i9] = b;
                i5++;
            }
            i = i7;
        }
        int length = iArr.length - 1;
        iArr2[length] = iArr2[length] + i5;
        return AssembleIndex(iArr2, bArr);
    }

    protected byte[] BuildNewIndexAndCopyAllGSubrs(int[] iArr, byte b) throws IOException {
        int[] iArr2 = new int[iArr.length];
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        while (i2 < iArr.length - 1) {
            iArr2[i2] = i3;
            int i4 = i2 + 1;
            i3 += iArr[i4] - iArr[i2];
            i2 = i4;
        }
        iArr2[iArr.length - 1] = i3;
        byte[] bArr = new byte[i3 + 1];
        int i5 = 0;
        while (i < iArr.length - 1) {
            int i6 = iArr2[i];
            int i7 = i + 1;
            int i8 = iArr2[i7];
            int i9 = i6 + i5;
            iArr2[i] = i9;
            if (i6 != i8) {
                this.buf.seek(iArr[i]);
                this.buf.readFully(bArr, i9, i8 - i6);
            } else {
                bArr[i9] = b;
                i5++;
            }
            i = i7;
        }
        int length = iArr.length - 1;
        iArr2[length] = iArr2[length] + i5;
        return AssembleIndex(iArr2, bArr);
    }

    protected byte[] AssembleIndex(int[] iArr, byte[] bArr) {
        char length = (char) (iArr.length - 1);
        int i = iArr[iArr.length - 1];
        byte b = i < 255 ? (byte) 1 : i < 65535 ? (byte) 2 : i < 16777215 ? (byte) 3 : (byte) 4;
        byte[] bArr2 = new byte[((length + 1) * b) + 3 + bArr.length];
        int i2 = 0;
        bArr2[0] = (byte) ((length >> '\b') & 255);
        bArr2[1] = (byte) (length & 255);
        bArr2[2] = b;
        int i3 = 3;
        for (int i4 : iArr) {
            int i5 = (i4 - iArr[0]) + 1;
            int i6 = b;
            while (i6 > 0) {
                bArr2[i3] = (byte) ((i5 >>> ((i6 - 1) << 3)) & 255);
                i6--;
                i3++;
            }
        }
        int length2 = bArr.length;
        while (i2 < length2) {
            bArr2[i3] = bArr[i2];
            i2++;
            i3++;
        }
        return bArr2;
    }

    protected byte[] BuildNewFile(int i) {
        this.OutputList = new LinkedList<>();
        CopyHeader();
        BuildIndexHeader(1, 1, 1);
        this.OutputList.addLast(new CFFFont.UInt8Item((char) (this.fonts[i].name.length() + 1)));
        this.OutputList.addLast(new CFFFont.StringItem(this.fonts[i].name));
        BuildIndexHeader(1, 2, 1);
        CFFFont.IndexOffsetItem indexOffsetItem = new CFFFont.IndexOffsetItem(2);
        this.OutputList.addLast(indexOffsetItem);
        CFFFont.IndexBaseItem indexBaseItem = new CFFFont.IndexBaseItem();
        this.OutputList.addLast(indexBaseItem);
        CFFFont.DictOffsetItem dictOffsetItem = new CFFFont.DictOffsetItem();
        CFFFont.DictOffsetItem dictOffsetItem2 = new CFFFont.DictOffsetItem();
        CFFFont.DictOffsetItem dictOffsetItem3 = new CFFFont.DictOffsetItem();
        CFFFont.DictOffsetItem dictOffsetItem4 = new CFFFont.DictOffsetItem();
        CFFFont.DictOffsetItem dictOffsetItem5 = new CFFFont.DictOffsetItem();
        if (!this.fonts[i].isCID) {
            this.OutputList.addLast(new CFFFont.DictNumberItem(this.fonts[i].nstrings));
            this.OutputList.addLast(new CFFFont.DictNumberItem(this.fonts[i].nstrings + 1));
            this.OutputList.addLast(new CFFFont.DictNumberItem(0));
            this.OutputList.addLast(new CFFFont.UInt8Item('\f'));
            this.OutputList.addLast(new CFFFont.UInt8Item((char) 30));
            this.OutputList.addLast(new CFFFont.DictNumberItem(this.fonts[i].nglyphs));
            this.OutputList.addLast(new CFFFont.UInt8Item('\f'));
            this.OutputList.addLast(new CFFFont.UInt8Item(Typography.quote));
        }
        seek(this.topdictOffsets[i]);
        while (getPosition() < this.topdictOffsets[i + 1]) {
            int position = getPosition();
            getDictItem();
            int position2 = getPosition();
            if (!"Encoding".equals(this.key) && !StandardRoles.PRIVATE.equals(this.key) && !"FDSelect".equals(this.key) && !"FDArray".equals(this.key) && !"charset".equals(this.key) && !"CharStrings".equals(this.key)) {
                this.OutputList.addLast(new CFFFont.RangeItem(this.buf, position, position2 - position));
            }
        }
        CreateKeys(dictOffsetItem3, dictOffsetItem4, dictOffsetItem, dictOffsetItem2);
        this.OutputList.addLast(new CFFFont.IndexMarkerItem(indexOffsetItem, indexBaseItem));
        if (this.fonts[i].isCID) {
            this.OutputList.addLast(getEntireIndexRange(this.stringIndexOffset));
        } else {
            CreateNewStringIndex(i);
        }
        this.OutputList.addLast(new CFFFont.RangeItem(new RandomAccessFileOrArray(this.rasFactory.createSource(this.NewGSubrsIndex)), 0, this.NewGSubrsIndex.length));
        if (this.fonts[i].isCID) {
            this.OutputList.addLast(new CFFFont.MarkerItem(dictOffsetItem4));
            if (this.fonts[i].fdselectOffset >= 0) {
                this.OutputList.addLast(new CFFFont.RangeItem(this.buf, this.fonts[i].fdselectOffset, this.fonts[i].FDSelectLength));
            } else {
                CreateFDSelect(dictOffsetItem4, this.fonts[i].nglyphs);
            }
            this.OutputList.addLast(new CFFFont.MarkerItem(dictOffsetItem));
            this.OutputList.addLast(new CFFFont.RangeItem(this.buf, this.fonts[i].charsetOffset, this.fonts[i].CharsetLength));
            if (this.fonts[i].fdarrayOffset >= 0) {
                this.OutputList.addLast(new CFFFont.MarkerItem(dictOffsetItem3));
                Reconstruct(i);
            } else {
                CreateFDArray(dictOffsetItem3, dictOffsetItem5, i);
            }
        } else {
            CreateFDSelect(dictOffsetItem4, this.fonts[i].nglyphs);
            CreateCharset(dictOffsetItem, this.fonts[i].nglyphs);
            CreateFDArray(dictOffsetItem3, dictOffsetItem5, i);
        }
        if (this.fonts[i].privateOffset >= 0) {
            CFFFont.IndexBaseItem indexBaseItem2 = new CFFFont.IndexBaseItem();
            this.OutputList.addLast(indexBaseItem2);
            this.OutputList.addLast(new CFFFont.MarkerItem(dictOffsetItem5));
            CFFFont.DictOffsetItem dictOffsetItem6 = new CFFFont.DictOffsetItem();
            CreateNonCIDPrivate(i, dictOffsetItem6);
            CreateNonCIDSubrs(i, indexBaseItem2, dictOffsetItem6);
        }
        this.OutputList.addLast(new CFFFont.MarkerItem(dictOffsetItem2));
        this.OutputList.addLast(new CFFFont.RangeItem(new RandomAccessFileOrArray(this.rasFactory.createSource(this.NewCharStringsIndex)), 0, this.NewCharStringsIndex.length));
        int[] iArr = {0};
        Iterator<CFFFont.Item> it = this.OutputList.iterator();
        while (it.hasNext()) {
            it.next().increment(iArr);
        }
        Iterator<CFFFont.Item> it2 = this.OutputList.iterator();
        while (it2.hasNext()) {
            it2.next().xref();
        }
        byte[] bArr = new byte[iArr[0]];
        Iterator<CFFFont.Item> it3 = this.OutputList.iterator();
        while (it3.hasNext()) {
            it3.next().emit(bArr);
        }
        return bArr;
    }

    protected void CopyHeader() {
        seek(0);
        getCard8();
        getCard8();
        char card8 = getCard8();
        getCard8();
        this.nextIndexOffset = card8;
        this.OutputList.addLast(new CFFFont.RangeItem(this.buf, 0, card8));
    }

    protected void BuildIndexHeader(int i, int i2, int i3) {
        this.OutputList.addLast(new CFFFont.UInt16Item((char) i));
        this.OutputList.addLast(new CFFFont.UInt8Item((char) i2));
        if (i2 == 1) {
            this.OutputList.addLast(new CFFFont.UInt8Item((char) i3));
            return;
        }
        if (i2 == 2) {
            this.OutputList.addLast(new CFFFont.UInt16Item((char) i3));
        } else if (i2 == 3) {
            this.OutputList.addLast(new CFFFont.UInt24Item((char) i3));
        } else {
            if (i2 != 4) {
                return;
            }
            this.OutputList.addLast(new CFFFont.UInt32Item((char) i3));
        }
    }

    protected void CreateKeys(CFFFont.OffsetItem offsetItem, CFFFont.OffsetItem offsetItem2, CFFFont.OffsetItem offsetItem3, CFFFont.OffsetItem offsetItem4) {
        this.OutputList.addLast(offsetItem);
        this.OutputList.addLast(new CFFFont.UInt8Item('\f'));
        this.OutputList.addLast(new CFFFont.UInt8Item('$'));
        this.OutputList.addLast(offsetItem2);
        this.OutputList.addLast(new CFFFont.UInt8Item('\f'));
        this.OutputList.addLast(new CFFFont.UInt8Item('%'));
        this.OutputList.addLast(offsetItem3);
        this.OutputList.addLast(new CFFFont.UInt8Item((char) 15));
        this.OutputList.addLast(offsetItem4);
        this.OutputList.addLast(new CFFFont.UInt8Item((char) 17));
    }

    protected void CreateNewStringIndex(int i) {
        int i2;
        String strSubstring = this.fonts[i].name + "-OneRange";
        if (strSubstring.length() > 127) {
            strSubstring = strSubstring.substring(0, 127);
        }
        String str = "AdobeIdentity" + strSubstring;
        int i3 = this.stringOffsets[this.stringOffsets.length - 1] - this.stringOffsets[0];
        int i4 = this.stringOffsets[0] - 1;
        if (str.length() + i3 <= 255) {
            i2 = 1;
        } else if (str.length() + i3 <= 65535) {
            i2 = 2;
        } else {
            i2 = str.length() + i3 <= 16777215 ? 3 : 4;
        }
        this.OutputList.addLast(new CFFFont.UInt16Item((char) (this.stringOffsets.length + 2)));
        this.OutputList.addLast(new CFFFont.UInt8Item((char) i2));
        for (int i5 : this.stringOffsets) {
            this.OutputList.addLast(new CFFFont.IndexOffsetItem(i2, i5 - i4));
        }
        int length = (this.stringOffsets[this.stringOffsets.length - 1] - i4) + "Adobe".length();
        this.OutputList.addLast(new CFFFont.IndexOffsetItem(i2, length));
        int length2 = length + "Identity".length();
        this.OutputList.addLast(new CFFFont.IndexOffsetItem(i2, length2));
        this.OutputList.addLast(new CFFFont.IndexOffsetItem(i2, length2 + strSubstring.length()));
        this.OutputList.addLast(new CFFFont.RangeItem(this.buf, this.stringOffsets[0], i3));
        this.OutputList.addLast(new CFFFont.StringItem(str));
    }

    protected void CreateFDSelect(CFFFont.OffsetItem offsetItem, int i) {
        this.OutputList.addLast(new CFFFont.MarkerItem(offsetItem));
        this.OutputList.addLast(new CFFFont.UInt8Item((char) 3));
        this.OutputList.addLast(new CFFFont.UInt16Item((char) 1));
        this.OutputList.addLast(new CFFFont.UInt16Item((char) 0));
        this.OutputList.addLast(new CFFFont.UInt8Item((char) 0));
        this.OutputList.addLast(new CFFFont.UInt16Item((char) i));
    }

    protected void CreateCharset(CFFFont.OffsetItem offsetItem, int i) {
        this.OutputList.addLast(new CFFFont.MarkerItem(offsetItem));
        this.OutputList.addLast(new CFFFont.UInt8Item((char) 2));
        this.OutputList.addLast(new CFFFont.UInt16Item((char) 1));
        this.OutputList.addLast(new CFFFont.UInt16Item((char) (i - 1)));
    }

    protected void CreateFDArray(CFFFont.OffsetItem offsetItem, CFFFont.OffsetItem offsetItem2, int i) {
        this.OutputList.addLast(new CFFFont.MarkerItem(offsetItem));
        BuildIndexHeader(1, 1, 1);
        CFFFont.IndexOffsetItem indexOffsetItem = new CFFFont.IndexOffsetItem(1);
        this.OutputList.addLast(indexOffsetItem);
        CFFFont.IndexBaseItem indexBaseItem = new CFFFont.IndexBaseItem();
        this.OutputList.addLast(indexBaseItem);
        int i2 = this.fonts[i].privateLength;
        int iCalcSubrOffsetSize = CalcSubrOffsetSize(this.fonts[i].privateOffset, this.fonts[i].privateLength);
        if (iCalcSubrOffsetSize != 0) {
            i2 += 5 - iCalcSubrOffsetSize;
        }
        this.OutputList.addLast(new CFFFont.DictNumberItem(i2));
        this.OutputList.addLast(offsetItem2);
        this.OutputList.addLast(new CFFFont.UInt8Item((char) 18));
        this.OutputList.addLast(new CFFFont.IndexMarkerItem(indexOffsetItem, indexBaseItem));
    }

    void Reconstruct(int i) {
        CFFFont.DictOffsetItem[] dictOffsetItemArr = new CFFFont.DictOffsetItem[this.fonts[i].FDArrayOffsets.length - 1];
        CFFFont.IndexBaseItem[] indexBaseItemArr = new CFFFont.IndexBaseItem[this.fonts[i].fdprivateOffsets.length];
        CFFFont.DictOffsetItem[] dictOffsetItemArr2 = new CFFFont.DictOffsetItem[this.fonts[i].fdprivateOffsets.length];
        ReconstructFDArray(i, dictOffsetItemArr);
        ReconstructPrivateDict(i, dictOffsetItemArr, indexBaseItemArr, dictOffsetItemArr2);
        ReconstructPrivateSubrs(i, indexBaseItemArr, dictOffsetItemArr2);
    }

    void ReconstructFDArray(int i, CFFFont.OffsetItem[] offsetItemArr) {
        int i2;
        BuildIndexHeader(this.fonts[i].FDArrayCount, this.fonts[i].FDArrayOffsize, 1);
        CFFFont.IndexOffsetItem[] indexOffsetItemArr = new CFFFont.IndexOffsetItem[this.fonts[i].FDArrayOffsets.length - 1];
        for (int i3 = 0; i3 < this.fonts[i].FDArrayOffsets.length - 1; i3++) {
            CFFFont.IndexOffsetItem indexOffsetItem = new CFFFont.IndexOffsetItem(this.fonts[i].FDArrayOffsize);
            indexOffsetItemArr[i3] = indexOffsetItem;
            this.OutputList.addLast(indexOffsetItem);
        }
        CFFFont.IndexBaseItem indexBaseItem = new CFFFont.IndexBaseItem();
        this.OutputList.addLast(indexBaseItem);
        int i4 = 0;
        while (i4 < this.fonts[i].FDArrayOffsets.length - 1) {
            seek(this.fonts[i].FDArrayOffsets[i4]);
            while (true) {
                i2 = i4 + 1;
                if (getPosition() < this.fonts[i].FDArrayOffsets[i2]) {
                    int position = getPosition();
                    getDictItem();
                    int position2 = getPosition();
                    if (StandardRoles.PRIVATE.equals(this.key)) {
                        int iIntValue = ((Integer) this.args[0]).intValue();
                        int iCalcSubrOffsetSize = CalcSubrOffsetSize(this.fonts[i].fdprivateOffsets[i4], this.fonts[i].fdprivateLengths[i4]);
                        if (iCalcSubrOffsetSize != 0) {
                            iIntValue += 5 - iCalcSubrOffsetSize;
                        }
                        this.OutputList.addLast(new CFFFont.DictNumberItem(iIntValue));
                        offsetItemArr[i4] = new CFFFont.DictOffsetItem();
                        this.OutputList.addLast(offsetItemArr[i4]);
                        this.OutputList.addLast(new CFFFont.UInt8Item((char) 18));
                        seek(position2);
                    } else {
                        this.OutputList.addLast(new CFFFont.RangeItem(this.buf, position, position2 - position));
                    }
                }
            }
            this.OutputList.addLast(new CFFFont.IndexMarkerItem(indexOffsetItemArr[i4], indexBaseItem));
            i4 = i2;
        }
    }

    void ReconstructPrivateDict(int i, CFFFont.OffsetItem[] offsetItemArr, CFFFont.IndexBaseItem[] indexBaseItemArr, CFFFont.OffsetItem[] offsetItemArr2) {
        for (int i2 = 0; i2 < this.fonts[i].fdprivateOffsets.length; i2++) {
            this.OutputList.addLast(new CFFFont.MarkerItem(offsetItemArr[i2]));
            CFFFont.IndexBaseItem indexBaseItem = new CFFFont.IndexBaseItem();
            indexBaseItemArr[i2] = indexBaseItem;
            this.OutputList.addLast(indexBaseItem);
            seek(this.fonts[i].fdprivateOffsets[i2]);
            while (getPosition() < this.fonts[i].fdprivateOffsets[i2] + this.fonts[i].fdprivateLengths[i2]) {
                int position = getPosition();
                getDictItem();
                int position2 = getPosition();
                if ("Subrs".equals(this.key)) {
                    offsetItemArr2[i2] = new CFFFont.DictOffsetItem();
                    this.OutputList.addLast(offsetItemArr2[i2]);
                    this.OutputList.addLast(new CFFFont.UInt8Item((char) 19));
                } else {
                    this.OutputList.addLast(new CFFFont.RangeItem(this.buf, position, position2 - position));
                }
            }
        }
    }

    void ReconstructPrivateSubrs(int i, CFFFont.IndexBaseItem[] indexBaseItemArr, CFFFont.OffsetItem[] offsetItemArr) {
        for (int i2 = 0; i2 < this.fonts[i].fdprivateLengths.length; i2++) {
            if (offsetItemArr[i2] != null && this.fonts[i].PrivateSubrsOffset[i2] >= 0) {
                this.OutputList.addLast(new CFFFont.SubrMarkerItem(offsetItemArr[i2], indexBaseItemArr[i2]));
                if (this.NewLSubrsIndex[i2] != null) {
                    this.OutputList.addLast(new CFFFont.RangeItem(new RandomAccessFileOrArray(this.rasFactory.createSource(this.NewLSubrsIndex[i2])), 0, this.NewLSubrsIndex[i2].length));
                }
            }
        }
    }

    int CalcSubrOffsetSize(int i, int i2) {
        seek(i);
        int i3 = 0;
        while (getPosition() < i + i2) {
            int position = getPosition();
            getDictItem();
            int position2 = getPosition();
            if ("Subrs".equals(this.key)) {
                i3 = (position2 - position) - 1;
            }
        }
        return i3;
    }

    protected int countEntireIndexRange(int i) {
        seek(i);
        char card16 = getCard16();
        if (card16 == 0) {
            return 2;
        }
        char card8 = getCard8();
        seek(i + 3 + (card16 * card8));
        return ((card16 + 1) * card8) + 3 + (getOffset(card8) - 1);
    }

    void CreateNonCIDPrivate(int i, CFFFont.OffsetItem offsetItem) {
        seek(this.fonts[i].privateOffset);
        while (getPosition() < this.fonts[i].privateOffset + this.fonts[i].privateLength) {
            int position = getPosition();
            getDictItem();
            int position2 = getPosition();
            if ("Subrs".equals(this.key)) {
                this.OutputList.addLast(offsetItem);
                this.OutputList.addLast(new CFFFont.UInt8Item((char) 19));
            } else {
                this.OutputList.addLast(new CFFFont.RangeItem(this.buf, position, position2 - position));
            }
        }
    }

    void CreateNonCIDSubrs(int i, CFFFont.IndexBaseItem indexBaseItem, CFFFont.OffsetItem offsetItem) {
        this.OutputList.addLast(new CFFFont.SubrMarkerItem(offsetItem, indexBaseItem));
        if (this.NewSubrsIndexNonCID != null) {
            this.OutputList.addLast(new CFFFont.RangeItem(new RandomAccessFileOrArray(this.rasFactory.createSource(this.NewSubrsIndexNonCID)), 0, this.NewSubrsIndexNonCID.length));
        }
    }

    int getCidForGlyphId(int i) {
        return getCidForGlyphId(0, i);
    }

    int getCidForGlyphId(int i, int i2) {
        int i3;
        return (this.fonts[i].gidToCid != null && (i3 = i2 + (-1)) >= 0 && i3 < this.fonts[i].gidToCid.length) ? this.fonts[i].gidToCid[i3] : i2;
    }

    private void initGlyphIdToCharacterIdArray(int i, int i2, int i3) {
        seek(i3);
        char card8 = getCard8();
        int i4 = i2 - 1;
        this.fonts[i].gidToCid = new int[i4];
        if (card8 == 0) {
            for (int i5 = 0; i5 < i4; i5++) {
                this.fonts[i].gidToCid[i5] = getCard16();
            }
        } else if (card8 == 1 || card8 == 2) {
            int i6 = 0;
            while (i6 < i4) {
                char card16 = getCard16();
                char card82 = card8 == 1 ? getCard8() : getCard16();
                int i7 = 0;
                while (i7 <= card82 && i6 < i4) {
                    this.fonts[i].gidToCid[i6] = card16 + i7;
                    i7++;
                    i6++;
                }
            }
        }
    }
}
