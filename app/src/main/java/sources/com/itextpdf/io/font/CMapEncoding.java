package com.itextpdf.io.font;

import com.itextpdf.io.font.cmap.CMapCidByte;
import com.itextpdf.io.font.cmap.CMapCidUni;
import com.itextpdf.io.font.cmap.CMapLocationFromBytes;
import com.itextpdf.io.font.cmap.CMapParser;
import com.itextpdf.io.logs.IoLogMessageConstant;
import com.itextpdf.io.source.ByteBuffer;
import com.itextpdf.io.util.IntHashtable;
import java.io.IOException;
import java.util.Arrays;
import java.util.List;
import java.util.Objects;
import org.slf4j.LoggerFactory;

/* JADX INFO: loaded from: classes6.dex */
public class CMapEncoding {
    private static final List<byte[]> IDENTITY_H_V_CODESPACE_RANGES = Arrays.asList(new byte[]{0, 0}, new byte[]{-1, -1});
    private CMapCidByte cid2Code;
    private CMapCidUni cid2Uni;
    private String cmap;
    private IntHashtable code2Cid;
    private List<byte[]> codeSpaceRanges;
    private boolean isDirect;
    private String uniMap;

    public CMapEncoding(String str) {
        this.cmap = str;
        if (str.equals(PdfEncodings.IDENTITY_H) || str.equals(PdfEncodings.IDENTITY_V)) {
            this.isDirect = true;
        }
        this.codeSpaceRanges = IDENTITY_H_V_CODESPACE_RANGES;
    }

    public CMapEncoding(String str, String str2) {
        this.cmap = str;
        this.uniMap = str2;
        if (str.equals(PdfEncodings.IDENTITY_H) || str.equals(PdfEncodings.IDENTITY_V)) {
            this.cid2Uni = FontCache.getCid2UniCmap(str2);
            this.isDirect = true;
            this.codeSpaceRanges = IDENTITY_H_V_CODESPACE_RANGES;
        } else {
            CMapCidByte cid2Byte = FontCache.getCid2Byte(str);
            this.cid2Code = cid2Byte;
            this.code2Cid = cid2Byte.getReversMap();
            this.codeSpaceRanges = this.cid2Code.getCodeSpaceRanges();
        }
    }

    public CMapEncoding(String str, byte[] bArr) {
        this.cmap = str;
        CMapCidByte cMapCidByte = new CMapCidByte();
        this.cid2Code = cMapCidByte;
        try {
            CMapParser.parseCid(str, cMapCidByte, new CMapLocationFromBytes(bArr));
            this.code2Cid = this.cid2Code.getReversMap();
            this.codeSpaceRanges = this.cid2Code.getCodeSpaceRanges();
        } catch (IOException unused) {
            LoggerFactory.getLogger(getClass()).error(IoLogMessageConstant.FAILED_TO_PARSE_ENCODING_STREAM);
        }
    }

    public boolean isDirect() {
        return this.isDirect;
    }

    public boolean hasUniMap() {
        String str = this.uniMap;
        return str != null && str.length() > 0;
    }

    public String getRegistry() {
        if (isDirect()) {
            return "Adobe";
        }
        return this.cid2Code.getRegistry();
    }

    public String getOrdering() {
        if (isDirect()) {
            return "Identity";
        }
        return this.cid2Code.getOrdering();
    }

    public int getSupplement() {
        if (isDirect()) {
            return 0;
        }
        return this.cid2Code.getSupplement();
    }

    public String getUniMapName() {
        return this.uniMap;
    }

    public String getCmapName() {
        return this.cmap;
    }

    public boolean isBuiltWith(String str) {
        return Objects.equals(str, this.cmap);
    }

    public byte[] getCmapBytes(int i) {
        byte[] bArr = new byte[getCmapBytesLength(i)];
        fillCmapBytes(i, bArr, 0);
        return bArr;
    }

    public int fillCmapBytes(int i, byte[] bArr, int i2) {
        if (this.isDirect) {
            int i3 = i2 + 1;
            bArr[i2] = (byte) ((65280 & i) >> 8);
            int i4 = i2 + 2;
            bArr[i3] = (byte) (i & 255);
            return i4;
        }
        byte[] bArrLookup = this.cid2Code.lookup(i);
        int i5 = 0;
        while (i5 < bArrLookup.length) {
            bArr[i2] = bArrLookup[i5];
            i5++;
            i2++;
        }
        return i2;
    }

    public void fillCmapBytes(int i, ByteBuffer byteBuffer) {
        if (this.isDirect) {
            byteBuffer.append((byte) ((65280 & i) >> 8));
            byteBuffer.append((byte) (i & 255));
        } else {
            byteBuffer.append(this.cid2Code.lookup(i));
        }
    }

    public int getCmapBytesLength(int i) {
        if (this.isDirect) {
            return 2;
        }
        return this.cid2Code.lookup(i).length;
    }

    public int getCidCode(int i) {
        return this.isDirect ? i : this.code2Cid.get(i);
    }

    public boolean containsCodeInCodeSpaceRange(int i, int i2) {
        for (int i3 = 0; i3 < this.codeSpaceRanges.size(); i3 += 2) {
            if (i2 == this.codeSpaceRanges.get(i3).length) {
                byte[] bArr = this.codeSpaceRanges.get(i3);
                byte[] bArr2 = this.codeSpaceRanges.get(i3 + 1);
                int i4 = i2 - 1;
                int i5 = 0;
                int i6 = 255;
                boolean z = true;
                while (i4 >= 0) {
                    int i7 = (i & i6) >> i5;
                    if (i7 < (bArr[i4] & 255) || i7 > (bArr2[i4] & 255)) {
                        z = false;
                    }
                    i4--;
                    i5 += 8;
                    i6 <<= 8;
                }
                if (z) {
                    return true;
                }
            }
        }
        return false;
    }
}
