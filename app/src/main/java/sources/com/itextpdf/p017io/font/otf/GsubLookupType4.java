package com.itextpdf.p017io.font.otf;

import com.itextpdf.p017io.font.otf.OpenTableLookup;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public class GsubLookupType4 extends OpenTableLookup {
    private Map<Integer, List<int[]>> ligatures;

    public GsubLookupType4(OpenTypeFontTableReader openTypeFontTableReader, int i, int[] iArr) throws IOException {
        super(openTypeFontTableReader, i, iArr);
        this.ligatures = new HashMap();
        readSubTables();
    }

    @Override // com.itextpdf.p017io.font.otf.OpenTableLookup
    public boolean transformOne(GlyphLine glyphLine) {
        boolean z;
        boolean z2 = false;
        if (glyphLine.idx >= glyphLine.end) {
            return false;
        }
        Glyph glyph = glyphLine.get(glyphLine.idx);
        if (this.ligatures.containsKey(Integer.valueOf(glyph.getCode())) && !this.openReader.isSkip(glyph.getCode(), this.lookupFlag)) {
            OpenTableLookup.GlyphIndexer glyphIndexer = new OpenTableLookup.GlyphIndexer();
            glyphIndexer.line = glyphLine;
            Iterator<int[]> it = this.ligatures.get(Integer.valueOf(glyph.getCode())).iterator();
            boolean z3 = false;
            while (true) {
                if (!it.hasNext()) {
                    z2 = z3;
                    break;
                }
                int[] next = it.next();
                glyphIndexer.idx = glyphLine.idx;
                for (int i = 1; i < next.length; i++) {
                    glyphIndexer.nextGlyph(this.openReader, this.lookupFlag);
                    if (glyphIndexer.glyph == null || glyphIndexer.glyph.getCode() != next[i]) {
                        z = false;
                        break;
                    }
                }
                z = true;
                if (z) {
                    glyphLine.substituteManyToOne(this.openReader, this.lookupFlag, next.length - 1, next[0]);
                    z2 = z;
                    break;
                }
                z3 = z;
            }
        }
        glyphLine.idx++;
        return z2;
    }

    @Override // com.itextpdf.p017io.font.otf.OpenTableLookup
    protected void readSubTable(int i) throws IOException {
        this.openReader.f2875rf.seek(i);
        this.openReader.f2875rf.readShort();
        int unsignedShort = this.openReader.f2875rf.readUnsignedShort() + i;
        int unsignedShort2 = this.openReader.f2875rf.readUnsignedShort();
        int[] iArr = new int[unsignedShort2];
        for (int i2 = 0; i2 < unsignedShort2; i2++) {
            iArr[i2] = this.openReader.f2875rf.readUnsignedShort() + i;
        }
        List<Integer> coverageFormat = this.openReader.readCoverageFormat(unsignedShort);
        for (int i3 = 0; i3 < unsignedShort2; i3++) {
            this.openReader.f2875rf.seek(iArr[i3]);
            int unsignedShort3 = this.openReader.f2875rf.readUnsignedShort();
            int[] iArr2 = new int[unsignedShort3];
            for (int i4 = 0; i4 < unsignedShort3; i4++) {
                iArr2[i4] = this.openReader.f2875rf.readUnsignedShort() + iArr[i3];
            }
            ArrayList arrayList = new ArrayList(unsignedShort3);
            for (int i5 = 0; i5 < unsignedShort3; i5++) {
                this.openReader.f2875rf.seek(iArr2[i5]);
                int unsignedShort4 = this.openReader.f2875rf.readUnsignedShort();
                int unsignedShort5 = this.openReader.f2875rf.readUnsignedShort();
                int[] iArr3 = new int[unsignedShort5];
                iArr3[0] = unsignedShort4;
                for (int i6 = 1; i6 < unsignedShort5; i6++) {
                    iArr3[i6] = this.openReader.f2875rf.readUnsignedShort();
                }
                arrayList.add(iArr3);
            }
            this.ligatures.put(coverageFormat.get(i3), arrayList);
        }
    }
}
