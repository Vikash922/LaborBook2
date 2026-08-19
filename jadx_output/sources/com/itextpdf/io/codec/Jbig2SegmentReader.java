package com.itextpdf.io.codec;

import com.google.common.base.Ascii;
import com.itextpdf.io.source.RandomAccessFileOrArray;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;
import java.util.TreeSet;
import org.bouncycastle.asn1.BERTags;
import org.bouncycastle.asn1.cmc.BodyPartID;
import org.slf4j.LoggerFactory;

/* JADX INFO: loaded from: classes6.dex */
public class Jbig2SegmentReader {
    public static final int END_OF_FILE = 51;
    public static final int END_OF_PAGE = 49;
    public static final int END_OF_STRIPE = 50;
    public static final int EXTENSION = 62;
    public static final int IMMEDIATE_GENERIC_REFINEMENT_REGION = 42;
    public static final int IMMEDIATE_GENERIC_REGION = 38;
    public static final int IMMEDIATE_HALFTONE_REGION = 22;
    public static final int IMMEDIATE_LOSSLESS_GENERIC_REFINEMENT_REGION = 43;
    public static final int IMMEDIATE_LOSSLESS_GENERIC_REGION = 39;
    public static final int IMMEDIATE_LOSSLESS_HALFTONE_REGION = 23;
    public static final int IMMEDIATE_LOSSLESS_TEXT_REGION = 7;
    public static final int IMMEDIATE_TEXT_REGION = 6;
    public static final int INTERMEDIATE_GENERIC_REFINEMENT_REGION = 40;
    public static final int INTERMEDIATE_GENERIC_REGION = 36;
    public static final int INTERMEDIATE_HALFTONE_REGION = 20;
    public static final int INTERMEDIATE_TEXT_REGION = 4;
    public static final int PAGE_INFORMATION = 48;
    public static final int PATTERN_DICTIONARY = 16;
    public static final int PROFILES = 52;
    public static final int SYMBOL_DICTIONARY = 0;
    public static final int TABLES = 53;
    private boolean number_of_pages_known;
    private RandomAccessFileOrArray ra;
    private boolean sequential;
    private final Map<Integer, Jbig2Segment> segments = new TreeMap();
    private final Map<Integer, Jbig2Page> pages = new TreeMap();
    private final Set<Jbig2Segment> globals = new TreeSet();
    private int number_of_pages = -1;
    private boolean read = false;

    public static class Jbig2Segment implements Comparable<Jbig2Segment> {
        public final int segmentNumber;
        public long dataLength = -1;
        public int page = -1;
        public int[] referredToSegmentNumbers = null;
        public boolean[] segmentRetentionFlags = null;
        public int type = -1;
        public boolean deferredNonRetain = false;
        public int countOfReferredToSegments = -1;
        public byte[] data = null;
        public byte[] headerData = null;
        public boolean page_association_size = false;
        public int page_association_offset = -1;

        public Jbig2Segment(int i) {
            this.segmentNumber = i;
        }

        @Override // java.lang.Comparable
        public int compareTo(Jbig2Segment jbig2Segment) {
            return this.segmentNumber - jbig2Segment.segmentNumber;
        }
    }

    public static class Jbig2Page {
        public final int page;
        private final Jbig2SegmentReader sr;
        private final Map<Integer, Jbig2Segment> segs = new TreeMap();
        public int pageBitmapWidth = -1;
        public int pageBitmapHeight = -1;

        public Jbig2Page(int i, Jbig2SegmentReader jbig2SegmentReader) {
            this.page = i;
            this.sr = jbig2SegmentReader;
        }

        public byte[] getData(boolean z) throws IOException {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            Iterator<Integer> it = this.segs.keySet().iterator();
            while (it.hasNext()) {
                Jbig2Segment jbig2Segment = this.segs.get(Integer.valueOf(it.next().intValue()));
                if (!z || (jbig2Segment.type != 51 && jbig2Segment.type != 49)) {
                    if (z) {
                        byte[] bArrCopyByteArray = Jbig2SegmentReader.copyByteArray(jbig2Segment.headerData);
                        if (jbig2Segment.page_association_size) {
                            bArrCopyByteArray[jbig2Segment.page_association_offset] = 0;
                            bArrCopyByteArray[jbig2Segment.page_association_offset + 1] = 0;
                            bArrCopyByteArray[jbig2Segment.page_association_offset + 2] = 0;
                            bArrCopyByteArray[jbig2Segment.page_association_offset + 3] = 1;
                        } else {
                            bArrCopyByteArray[jbig2Segment.page_association_offset] = 1;
                        }
                        byteArrayOutputStream.write(bArrCopyByteArray);
                    } else {
                        byteArrayOutputStream.write(jbig2Segment.headerData);
                    }
                    byteArrayOutputStream.write(jbig2Segment.data);
                }
            }
            byteArrayOutputStream.close();
            return byteArrayOutputStream.toByteArray();
        }

        public void addSegment(Jbig2Segment jbig2Segment) {
            this.segs.put(Integer.valueOf(jbig2Segment.segmentNumber), jbig2Segment);
        }
    }

    public Jbig2SegmentReader(RandomAccessFileOrArray randomAccessFileOrArray) {
        this.ra = randomAccessFileOrArray;
    }

    public static byte[] copyByteArray(byte[] bArr) {
        byte[] bArr2 = new byte[bArr.length];
        System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
        return bArr2;
    }

    public void read() throws IOException {
        Jbig2Segment header;
        if (this.read) {
            throw new IllegalStateException("already.attempted.a.read.on.this.jbig2.file");
        }
        this.read = true;
        readFileHeader();
        if (this.sequential) {
            do {
                Jbig2Segment header2 = readHeader();
                readSegment(header2);
                this.segments.put(Integer.valueOf(header2.segmentNumber), header2);
            } while (this.ra.getPosition() < this.ra.length());
            return;
        }
        do {
            header = readHeader();
            this.segments.put(Integer.valueOf(header.segmentNumber), header);
        } while (header.type != 51);
        Iterator<Integer> it = this.segments.keySet().iterator();
        while (it.hasNext()) {
            readSegment(this.segments.get(Integer.valueOf(it.next().intValue())));
        }
    }

    void readSegment(Jbig2Segment jbig2Segment) throws IOException {
        int position = (int) this.ra.getPosition();
        if (jbig2Segment.dataLength == BodyPartID.bodyIdMax) {
            return;
        }
        byte[] bArr = new byte[(int) jbig2Segment.dataLength];
        this.ra.read(bArr);
        jbig2Segment.data = bArr;
        if (jbig2Segment.type == 48) {
            int position2 = (int) this.ra.getPosition();
            this.ra.seek(position);
            int i = this.ra.readInt();
            int i2 = this.ra.readInt();
            this.ra.seek(position2);
            Jbig2Page jbig2Page = this.pages.get(Integer.valueOf(jbig2Segment.page));
            if (jbig2Page == null) {
                throw new com.itextpdf.io.exceptions.IOException("Referring to widht or height of a page we haven't seen yet: {0}").setMessageParams(Integer.valueOf(jbig2Segment.page));
            }
            jbig2Page.pageBitmapWidth = i;
            jbig2Page.pageBitmapHeight = i2;
        }
    }

    Jbig2Segment readHeader() throws IOException {
        boolean[] zArr;
        int i;
        int position = (int) this.ra.getPosition();
        int i2 = this.ra.readInt();
        Jbig2Segment jbig2Segment = new Jbig2Segment(i2);
        int i3 = this.ra.read();
        jbig2Segment.deferredNonRetain = (i3 & 128) == 128;
        boolean z = (i3 & 64) == 64;
        jbig2Segment.type = i3 & 63;
        int i4 = this.ra.read();
        int i5 = (i4 & BERTags.FLAGS) >> 5;
        if (i5 == 7) {
            RandomAccessFileOrArray randomAccessFileOrArray = this.ra;
            randomAccessFileOrArray.seek(randomAccessFileOrArray.getPosition() - 1);
            int i6 = this.ra.readInt() & 536870911;
            zArr = new boolean[i6 + 1];
            int i7 = 0;
            int i8 = 0;
            do {
                int i9 = i7 % 8;
                if (i9 == 0) {
                    i8 = this.ra.read();
                }
                zArr[i7] = (((1 << i9) & i8) >> i9) == 1;
                i7++;
            } while (i7 <= i6);
            i5 = i6;
        } else if (i5 <= 4) {
            zArr = new boolean[i5 + 1];
            int i10 = i4 & 31;
            for (int i11 = 0; i11 <= i5; i11++) {
                zArr[i11] = (((1 << i11) & i10) >> i11) == 1;
            }
        } else {
            if (i5 == 5 || i5 == 6) {
                throw new com.itextpdf.io.exceptions.IOException("Count of referred-to segments has forbidden value in the header for segment {0} starting at {1}").setMessageParams(Integer.valueOf(i2), Integer.valueOf(position));
            }
            zArr = null;
        }
        jbig2Segment.segmentRetentionFlags = zArr;
        jbig2Segment.countOfReferredToSegments = i5;
        int[] iArr = new int[i5 + 1];
        for (int i12 = 1; i12 <= i5; i12++) {
            if (i2 <= 256) {
                iArr[i12] = this.ra.read();
            } else if (i2 <= 65536) {
                iArr[i12] = this.ra.readUnsignedShort();
            } else {
                iArr[i12] = (int) this.ra.readUnsignedInt();
            }
        }
        jbig2Segment.referredToSegmentNumbers = iArr;
        int position2 = ((int) this.ra.getPosition()) - position;
        if (z) {
            i = this.ra.readInt();
        } else {
            i = this.ra.read();
        }
        if (i < 0) {
            throw new com.itextpdf.io.exceptions.IOException("Page {0} is invalid for segment {1} starting at {2}").setMessageParams(Integer.valueOf(i), Integer.valueOf(i2), Integer.valueOf(position));
        }
        jbig2Segment.page = i;
        jbig2Segment.page_association_size = z;
        jbig2Segment.page_association_offset = position2;
        if (i > 0 && !this.pages.containsKey(Integer.valueOf(i))) {
            this.pages.put(Integer.valueOf(i), new Jbig2Page(i, this));
        }
        if (i > 0) {
            this.pages.get(Integer.valueOf(i)).addSegment(jbig2Segment);
        } else {
            this.globals.add(jbig2Segment);
        }
        jbig2Segment.dataLength = this.ra.readUnsignedInt();
        int position3 = (int) this.ra.getPosition();
        this.ra.seek(position);
        byte[] bArr = new byte[position3 - position];
        this.ra.read(bArr);
        jbig2Segment.headerData = bArr;
        return jbig2Segment;
    }

    void readFileHeader() throws IOException {
        this.ra.seek(0L);
        byte[] bArr = new byte[8];
        this.ra.read(bArr);
        byte[] bArr2 = {-105, 74, 66, 50, Ascii.CR, 10, Ascii.SUB, 10};
        for (int i = 0; i < 8; i++) {
            if (bArr[i] != bArr2[i]) {
                throw new com.itextpdf.io.exceptions.IOException("File header idstring is not good at byte {0}").setMessageParams(Integer.valueOf(i));
            }
        }
        int i2 = this.ra.read();
        this.sequential = (i2 & 1) == 1;
        boolean z = (i2 & 2) == 0;
        this.number_of_pages_known = z;
        if ((i2 & 252) != 0) {
            throw new com.itextpdf.io.exceptions.IOException("File header flags bits from 2 to 7 should be 0, some not");
        }
        if (z) {
            this.number_of_pages = this.ra.readInt();
        }
    }

    public int numberOfPages() {
        return this.pages.size();
    }

    public int getPageHeight(int i) {
        return this.pages.get(Integer.valueOf(i)).pageBitmapHeight;
    }

    public int getPageWidth(int i) {
        return this.pages.get(Integer.valueOf(i)).pageBitmapWidth;
    }

    public Jbig2Page getPage(int i) {
        return this.pages.get(Integer.valueOf(i));
    }

    public byte[] getGlobal(boolean z) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            for (Jbig2Segment jbig2Segment : this.globals) {
                if (!z || (jbig2Segment.type != 51 && jbig2Segment.type != 49)) {
                    byteArrayOutputStream.write(jbig2Segment.headerData);
                    byteArrayOutputStream.write(jbig2Segment.data);
                }
            }
            byteArray = byteArrayOutputStream.size() > 0 ? byteArrayOutputStream.toByteArray() : null;
            byteArrayOutputStream.close();
        } catch (IOException e) {
            LoggerFactory.getLogger((Class<?>) Jbig2SegmentReader.class).debug(e.getMessage());
        }
        return byteArray;
    }

    public String toString() {
        if (this.read) {
            return "Jbig2SegmentReader: number of pages: " + numberOfPages();
        }
        return "Jbig2SegmentReader in indeterminate state.";
    }
}
