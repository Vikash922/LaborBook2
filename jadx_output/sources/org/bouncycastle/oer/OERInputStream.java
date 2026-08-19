package org.bouncycastle.oer;

import com.facebook.appevents.AppEventsConstants;
import java.io.EOFException;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.math.BigInteger;
import java.util.Iterator;
import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.oer.OERDefinition;
import org.bouncycastle.util.BigIntegers;
import org.bouncycastle.util.encoders.Hex;
import org.bouncycastle.util.p047io.Streams;
import org.shadow.apache.commons.lang3.StringUtils;

/* JADX INFO: loaded from: classes3.dex */
public class OERInputStream extends FilterInputStream {
    private static final int[] bits = {1, 2, 4, 8, 16, 32, 64, 128};
    protected PrintWriter debugOutput;
    private int maxByteAllocation;

    /* JADX INFO: renamed from: org.bouncycastle.oer.OERInputStream$1 */
    static /* synthetic */ class C47041 {
        static final /* synthetic */ int[] $SwitchMap$org$bouncycastle$oer$OERDefinition$BaseType;

        static {
            int[] iArr = new int[OERDefinition.BaseType.values().length];
            $SwitchMap$org$bouncycastle$oer$OERDefinition$BaseType = iArr;
            try {
                iArr[OERDefinition.BaseType.SEQ_OF.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$org$bouncycastle$oer$OERDefinition$BaseType[OERDefinition.BaseType.SEQ.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$org$bouncycastle$oer$OERDefinition$BaseType[OERDefinition.BaseType.CHOICE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$org$bouncycastle$oer$OERDefinition$BaseType[OERDefinition.BaseType.ENUM.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$org$bouncycastle$oer$OERDefinition$BaseType[OERDefinition.BaseType.INT.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$org$bouncycastle$oer$OERDefinition$BaseType[OERDefinition.BaseType.OCTET_STRING.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$org$bouncycastle$oer$OERDefinition$BaseType[OERDefinition.BaseType.UTF8_STRING.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$org$bouncycastle$oer$OERDefinition$BaseType[OERDefinition.BaseType.BIT_STRING.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$org$bouncycastle$oer$OERDefinition$BaseType[OERDefinition.BaseType.NULL.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                $SwitchMap$org$bouncycastle$oer$OERDefinition$BaseType[OERDefinition.BaseType.EXTENSION.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
        }
    }

    public static class Choice extends OERInputStream {
        final int preamble;
        final int tag;
        final int tagClass;

        public Choice(InputStream inputStream) throws Exception {
            int i;
            super(inputStream);
            int i2 = read();
            this.preamble = i2;
            if (i2 < 0) {
                throw new EOFException("expecting preamble byte of choice");
            }
            this.tagClass = i2 & 192;
            int i3 = i2 & 63;
            if (i3 >= 63) {
                i3 = 0;
                do {
                    i = inputStream.read();
                    if (i < 0) {
                        throw new EOFException("expecting further tag bytes");
                    }
                    i3 = (i3 << 7) | (i & 127);
                } while ((i & 128) != 0);
            }
            this.tag = i3;
        }

        public int getTag() {
            return this.tag;
        }

        public int getTagClass() {
            return this.tagClass;
        }

        public boolean isApplicationTagClass() {
            return this.tagClass == 64;
        }

        public boolean isContextSpecific() {
            return this.tagClass == 128;
        }

        public boolean isPrivateTagClass() {
            return this.tagClass == 192;
        }

        public boolean isUniversalTagClass() {
            return this.tagClass == 0;
        }

        public String toString() {
            String str;
            StringBuilder sb = new StringBuilder("CHOICE(");
            int i = this.tagClass;
            if (i == 0) {
                str = "Universal ";
            } else if (i == 64) {
                str = "Application ";
            } else {
                if (i != 128) {
                    if (i == 192) {
                        str = "Private ";
                    }
                    sb.append("Tag = " + this.tag);
                    sb.append(")");
                    return sb.toString();
                }
                str = "ContextSpecific ";
            }
            sb.append(str);
            sb.append("Tag = " + this.tag);
            sb.append(")");
            return sb.toString();
        }
    }

    private final class LengthInfo {
        private final BigInteger length;
        private final boolean shortForm;

        public LengthInfo(BigInteger bigInteger, boolean z) {
            this.length = bigInteger;
            this.shortForm = z;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public int intLength() {
            return this.length.intValue();
        }
    }

    public static class Sequence extends OERInputStream {
        private final boolean extensionFlagSet;
        private final boolean[] optionalPresent;
        final int preamble;

        public Sequence(InputStream inputStream, int i, boolean z, boolean z2) throws IOException {
            super(inputStream);
            if (i == 0 && !z2 && !z) {
                this.preamble = 0;
                this.optionalPresent = new boolean[0];
                this.extensionFlagSet = false;
                return;
            }
            int i2 = inputStream.read();
            this.preamble = i2;
            if (i2 < 0) {
                throw new EOFException("expecting preamble byte of sequence");
            }
            this.extensionFlagSet = z2 && (i2 & 128) == 128;
            int i3 = z2 ? 6 : 7;
            this.optionalPresent = new boolean[i];
            for (int i4 = 0; i4 < this.optionalPresent.length; i4++) {
                if (i3 < 0) {
                    i2 = inputStream.read();
                    if (i2 < 0) {
                        throw new EOFException("expecting mask byte sequence");
                    }
                    i3 = 7;
                }
                this.optionalPresent[i4] = (OERInputStream.bits[i3] & i2) > 0;
                i3--;
            }
        }

        public boolean hasExtension() {
            return this.extensionFlagSet;
        }

        public boolean hasOptional(int i) {
            return this.optionalPresent[i];
        }

        public String toString() {
            StringBuilder sb = new StringBuilder("SEQ(");
            sb.append(hasExtension() ? "Ext " : "");
            int i = 0;
            while (true) {
                boolean[] zArr = this.optionalPresent;
                if (i >= zArr.length) {
                    sb.append(")");
                    return sb.toString();
                }
                sb.append(zArr[i] ? AppEventsConstants.EVENT_PARAM_VALUE_YES : AppEventsConstants.EVENT_PARAM_VALUE_NO);
                i++;
            }
        }
    }

    public OERInputStream(InputStream inputStream) {
        super(inputStream);
        this.maxByteAllocation = 1048576;
        this.debugOutput = null;
    }

    public OERInputStream(InputStream inputStream, int i) {
        super(inputStream);
        this.debugOutput = null;
        this.maxByteAllocation = i;
    }

    private ASN1Encodable absent(OERDefinition.Element element) {
        debugPrint(element.appendLabel("Absent"));
        return OEROptional.ABSENT;
    }

    private byte[] allocateArray(int i) {
        if (i <= this.maxByteAllocation) {
            return new byte[i];
        }
        throw new IllegalArgumentException("required byte array size " + i + " was greater than " + this.maxByteAllocation);
    }

    private int countOptionalChildTypes(OERDefinition.Element element) {
        Iterator<OERDefinition.Element> it = element.children.iterator();
        int i = 0;
        while (it.hasNext()) {
            i += !it.next().explicit ? 1 : 0;
        }
        return i;
    }

    public Choice choice() throws Exception {
        return new Choice(this);
    }

    protected void debugPrint(String str) {
        if (this.debugOutput == null) {
            return;
        }
        StackTraceElement[] stackTrace = Thread.currentThread().getStackTrace();
        int i = -1;
        for (int i2 = 0; i2 != stackTrace.length; i2++) {
            StackTraceElement stackTraceElement = stackTrace[i2];
            if (stackTraceElement.getMethodName().equals("debugPrint")) {
                i = 0;
            } else if (stackTraceElement.getClassName().contains("OERInput")) {
                i++;
            }
        }
        while (true) {
            PrintWriter printWriter = this.debugOutput;
            if (i <= 0) {
                printWriter.append((CharSequence) str).append((CharSequence) StringUtils.f4768LF);
                this.debugOutput.flush();
                return;
            } else {
                printWriter.append((CharSequence) "    ");
                i--;
            }
        }
    }

    public BigInteger enumeration() throws Exception {
        int i = read();
        if (i == -1) {
            throw new EOFException("expecting prefix of enumeration");
        }
        if ((i & 128) != 128) {
            return BigInteger.valueOf(i);
        }
        int i2 = i & 127;
        if (i2 == 0) {
            return BigInteger.ZERO;
        }
        byte[] bArr = new byte[i2];
        if (Streams.readFully(this, bArr) == i2) {
            return new BigInteger(1, bArr);
        }
        throw new EOFException("unable to fully read integer component of enumeration");
    }

    public BigInteger int16() throws Exception {
        return parseInt(false, 2);
    }

    public BigInteger int32() throws Exception {
        return parseInt(false, 4);
    }

    public BigInteger int64() throws Exception {
        return parseInt(false, 8);
    }

    public BigInteger int8() throws Exception {
        return parseInt(false, 1);
    }

    /* JADX WARN: Removed duplicated region for block: B:87:0x0224 A[PHI: r0
      0x0224: PHI (r0v18 byte[]) = (r0v17 byte[]), (r0v21 byte[]) binds: [B:86:0x0222, B:82:0x020a] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public org.bouncycastle.asn1.ASN1Object parse(org.bouncycastle.oer.OERDefinition.Element r9) throws java.lang.Exception {
        /*
            Method dump skipped, instruction units count: 988
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.bouncycastle.oer.OERInputStream.parse(org.bouncycastle.oer.OERDefinition$Element):org.bouncycastle.asn1.ASN1Object");
    }

    public BigInteger parseInt(boolean z, int i) throws Exception {
        byte[] bArr = new byte[i];
        if (Streams.readFully(this, bArr) == i) {
            return z ? new BigInteger(1, bArr) : new BigInteger(bArr);
        }
        throw new IllegalStateException("integer not fully read");
    }

    public LengthInfo readLength() throws Exception {
        int i = read();
        if (i == -1) {
            throw new EOFException("expecting length");
        }
        if ((i & 128) == 0) {
            return new LengthInfo(BigInteger.valueOf(i & 127), true);
        }
        int i2 = i & 127;
        byte[] bArr = new byte[i2];
        if (Streams.readFully(this, bArr) != i2) {
            throw new EOFException("did not read all bytes of length definition");
        }
        Hex.toHexString(bArr);
        return new LengthInfo(BigIntegers.fromUnsignedByteArray(bArr), false);
    }

    public Sequence sequence(int i, boolean z, boolean z2) throws Exception {
        return new Sequence(this, i, z, z2);
    }

    public BigInteger uint16() throws Exception {
        return parseInt(true, 2);
    }

    public BigInteger uint32() throws Exception {
        return parseInt(true, 4);
    }

    public BigInteger uint64() throws Exception {
        return parseInt(false, 8);
    }

    public BigInteger uint8() throws Exception {
        return parseInt(true, 1);
    }
}
