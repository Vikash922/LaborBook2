package org.bouncycastle.crypto.engines;

import androidx.core.view.MotionEventCompat;
import androidx.core.view.ViewCompat;
import androidx.webkit.Profile;
import com.google.common.base.Ascii;
import java.util.Enumeration;
import java.util.Hashtable;
import org.bouncycastle.crypto.BlockCipher;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.OutputLengthException;
import org.bouncycastle.crypto.params.KeyParameter;
import org.bouncycastle.crypto.params.ParametersWithSBox;
import org.bouncycastle.util.Arrays;
import org.bouncycastle.util.Strings;

/* JADX INFO: loaded from: classes5.dex */
public class GOST28147Engine implements BlockCipher {
    protected static final int BLOCK_SIZE = 8;
    private boolean forEncryption;
    private static byte[] Sbox_Default = {4, 10, 9, 2, Ascii.f384CR, 8, 0, Ascii.f394SO, 6, Ascii.f397VT, 1, Ascii.f386FF, 7, Ascii.f393SI, 5, 3, Ascii.f394SO, Ascii.f397VT, 4, Ascii.f386FF, 6, Ascii.f384CR, Ascii.f393SI, 10, 2, 3, 8, 1, 0, 7, 5, 9, 5, 8, 1, Ascii.f384CR, 10, 3, 4, 2, Ascii.f394SO, Ascii.f393SI, Ascii.f386FF, 7, 6, 0, 9, Ascii.f397VT, 7, Ascii.f384CR, 10, 1, 0, 8, 9, Ascii.f393SI, Ascii.f394SO, 4, 6, Ascii.f386FF, Ascii.f397VT, 2, 5, 3, 6, Ascii.f386FF, 7, 1, 5, Ascii.f393SI, Ascii.f384CR, 8, 4, 10, 9, Ascii.f394SO, 0, 3, Ascii.f397VT, 2, 4, Ascii.f397VT, 10, 0, 7, 2, 1, Ascii.f384CR, 3, 6, 8, 5, 9, Ascii.f386FF, Ascii.f393SI, Ascii.f394SO, Ascii.f384CR, Ascii.f397VT, 4, 1, 3, Ascii.f393SI, 5, 9, 0, 10, Ascii.f394SO, 7, 6, 8, 2, Ascii.f386FF, 1, Ascii.f393SI, Ascii.f384CR, 0, 5, 7, 10, 4, 9, 2, 3, Ascii.f394SO, 6, Ascii.f397VT, 8, Ascii.f386FF};
    private static byte[] ESbox_Test = {4, 2, Ascii.f393SI, 5, 9, 1, 0, 8, Ascii.f394SO, 3, Ascii.f397VT, Ascii.f386FF, Ascii.f384CR, 7, 10, 6, Ascii.f386FF, 9, Ascii.f393SI, Ascii.f394SO, 8, 1, 3, 10, 2, 7, 4, Ascii.f384CR, 6, 0, Ascii.f397VT, 5, Ascii.f384CR, 8, Ascii.f394SO, Ascii.f386FF, 7, 3, 9, 10, 1, 5, 2, 4, 6, Ascii.f393SI, 0, Ascii.f397VT, Ascii.f394SO, 9, Ascii.f397VT, 2, 5, Ascii.f393SI, 7, 1, 0, Ascii.f384CR, Ascii.f386FF, 6, 10, 4, 3, 8, 3, Ascii.f394SO, 5, 9, 6, 8, 0, Ascii.f384CR, 10, Ascii.f397VT, 7, Ascii.f386FF, 2, 1, Ascii.f393SI, 4, 8, Ascii.f393SI, 6, Ascii.f397VT, 1, 9, Ascii.f386FF, 5, Ascii.f384CR, 3, 7, 10, 0, Ascii.f394SO, 2, 4, 9, Ascii.f397VT, Ascii.f386FF, 0, 3, 6, 7, 5, 4, 8, Ascii.f394SO, Ascii.f393SI, 1, 10, 2, Ascii.f384CR, Ascii.f386FF, 6, 5, 2, Ascii.f397VT, 0, 9, Ascii.f384CR, 3, Ascii.f394SO, 7, 10, Ascii.f393SI, 4, 1, 8};
    private static byte[] ESbox_A = {9, 6, 3, 2, 8, Ascii.f397VT, 1, 7, 10, 4, Ascii.f394SO, Ascii.f393SI, Ascii.f386FF, 0, Ascii.f384CR, 5, 3, 7, Ascii.f394SO, 9, 8, 10, Ascii.f393SI, 0, 5, 2, 6, Ascii.f386FF, Ascii.f397VT, 4, Ascii.f384CR, 1, Ascii.f394SO, 4, 6, 2, Ascii.f397VT, 3, Ascii.f384CR, 8, Ascii.f386FF, Ascii.f393SI, 5, 10, 0, 7, 1, 9, Ascii.f394SO, 7, 10, Ascii.f386FF, Ascii.f384CR, 1, 3, 9, 0, 2, Ascii.f397VT, 4, Ascii.f393SI, 8, 5, 6, Ascii.f397VT, 5, 1, 9, 8, Ascii.f384CR, Ascii.f393SI, 0, Ascii.f394SO, 4, 2, 3, Ascii.f386FF, 7, 10, 6, 3, 10, Ascii.f384CR, Ascii.f386FF, 1, 2, 0, Ascii.f397VT, 7, 5, 9, 4, 8, Ascii.f393SI, Ascii.f394SO, 6, 1, Ascii.f384CR, 2, 9, 7, 10, 6, 0, 8, Ascii.f386FF, 4, 5, Ascii.f393SI, 3, Ascii.f397VT, Ascii.f394SO, Ascii.f397VT, 10, Ascii.f393SI, 5, 0, Ascii.f386FF, Ascii.f394SO, 8, 6, 2, 3, 9, 1, 7, Ascii.f384CR, 4};
    private static byte[] ESbox_B = {8, 4, Ascii.f397VT, 1, 3, 5, 0, 9, 2, Ascii.f394SO, 10, Ascii.f386FF, Ascii.f384CR, 6, 7, Ascii.f393SI, 0, 1, 2, 10, 4, Ascii.f384CR, 5, Ascii.f386FF, 9, 7, 3, Ascii.f393SI, Ascii.f397VT, 8, 6, Ascii.f394SO, Ascii.f394SO, Ascii.f386FF, 0, 10, 9, 2, Ascii.f384CR, Ascii.f397VT, 7, 5, 8, Ascii.f393SI, 3, 6, 1, 4, 7, 5, 0, Ascii.f384CR, Ascii.f397VT, 6, 1, 2, 3, 10, Ascii.f386FF, Ascii.f393SI, 4, Ascii.f394SO, 9, 8, 2, 7, Ascii.f386FF, Ascii.f393SI, 9, 5, 10, Ascii.f397VT, 1, 4, 0, Ascii.f384CR, 6, 8, Ascii.f394SO, 3, 8, 3, 2, 6, 4, Ascii.f384CR, Ascii.f394SO, Ascii.f397VT, Ascii.f386FF, 1, 7, Ascii.f393SI, 10, 0, 9, 5, 5, 2, 10, Ascii.f397VT, 9, 1, Ascii.f386FF, 3, 7, 4, Ascii.f384CR, 0, 6, Ascii.f393SI, 8, Ascii.f394SO, 0, 4, Ascii.f397VT, Ascii.f394SO, 8, 3, 7, 1, 10, 2, 9, 6, Ascii.f393SI, Ascii.f384CR, 5, Ascii.f386FF};
    private static byte[] ESbox_C = {1, Ascii.f397VT, Ascii.f386FF, 2, 9, Ascii.f384CR, 0, Ascii.f393SI, 4, 5, 8, Ascii.f394SO, 10, 7, 6, 3, 0, 1, 7, Ascii.f384CR, Ascii.f397VT, 4, 5, 2, 8, Ascii.f394SO, Ascii.f393SI, Ascii.f386FF, 9, 10, 6, 3, 8, 2, 5, 0, 4, 9, Ascii.f393SI, 10, 3, 7, Ascii.f386FF, Ascii.f384CR, 6, Ascii.f394SO, 1, Ascii.f397VT, 3, 6, 0, 1, 5, Ascii.f384CR, 10, 8, Ascii.f397VT, 2, 9, 7, Ascii.f394SO, Ascii.f393SI, Ascii.f386FF, 4, 8, Ascii.f384CR, Ascii.f397VT, 0, 4, 5, 1, 2, 9, 3, Ascii.f386FF, Ascii.f394SO, 6, Ascii.f393SI, 10, 7, Ascii.f386FF, 9, Ascii.f397VT, 1, 8, Ascii.f394SO, 2, 4, 7, 3, 6, 5, 10, 0, Ascii.f393SI, Ascii.f384CR, 10, 9, 6, 8, Ascii.f384CR, Ascii.f394SO, 2, 0, Ascii.f393SI, 3, 5, Ascii.f397VT, 4, 1, Ascii.f386FF, 7, 7, 4, 0, 5, 10, 2, Ascii.f393SI, Ascii.f394SO, Ascii.f386FF, 6, 1, Ascii.f397VT, Ascii.f384CR, 9, 3, 8};
    private static byte[] ESbox_D = {Ascii.f393SI, Ascii.f386FF, 2, 10, 6, 4, 5, 0, 7, 9, Ascii.f394SO, Ascii.f384CR, 1, Ascii.f397VT, 8, 3, Ascii.f397VT, 6, 3, 4, Ascii.f386FF, Ascii.f393SI, Ascii.f394SO, 2, 7, Ascii.f384CR, 8, 0, 5, 10, 9, 1, 1, Ascii.f386FF, Ascii.f397VT, 0, Ascii.f393SI, Ascii.f394SO, 6, 5, 10, Ascii.f384CR, 4, 8, 9, 3, 7, 2, 1, 5, Ascii.f394SO, Ascii.f386FF, 10, 7, 0, Ascii.f384CR, 6, 2, Ascii.f397VT, 4, 9, 3, Ascii.f393SI, 8, 0, Ascii.f386FF, 8, 9, Ascii.f384CR, 2, 10, Ascii.f397VT, 7, 3, 6, 5, 4, Ascii.f394SO, Ascii.f393SI, 1, 8, 0, Ascii.f393SI, 3, 2, 5, Ascii.f394SO, Ascii.f397VT, 1, 10, 4, 7, Ascii.f386FF, 9, Ascii.f384CR, 6, 3, 0, 6, Ascii.f393SI, 1, Ascii.f394SO, 9, 2, Ascii.f384CR, 8, Ascii.f386FF, 4, Ascii.f397VT, 10, 5, 7, 1, 10, 6, 8, Ascii.f393SI, Ascii.f397VT, 0, 4, Ascii.f386FF, 3, 5, 9, 7, Ascii.f384CR, 2, Ascii.f394SO};
    private static byte[] Param_Z = {Ascii.f386FF, 4, 6, 2, 10, 5, Ascii.f397VT, 9, Ascii.f394SO, 8, Ascii.f384CR, 7, 0, 3, Ascii.f393SI, 1, 6, 8, 2, 3, 9, 10, 5, Ascii.f386FF, 1, Ascii.f394SO, 4, 7, Ascii.f397VT, Ascii.f384CR, 0, Ascii.f393SI, Ascii.f397VT, 3, 5, 8, 2, Ascii.f393SI, 10, Ascii.f384CR, Ascii.f394SO, 1, 7, 4, Ascii.f386FF, 9, 6, 0, Ascii.f386FF, 8, 2, 1, Ascii.f384CR, 4, Ascii.f393SI, 6, 7, 0, 10, 5, 3, Ascii.f394SO, 9, Ascii.f397VT, 7, Ascii.f393SI, 5, 10, 8, 1, 6, Ascii.f384CR, 0, 9, 3, Ascii.f394SO, Ascii.f397VT, 4, 2, Ascii.f386FF, 5, Ascii.f384CR, Ascii.f393SI, 6, 9, 2, Ascii.f386FF, 10, Ascii.f397VT, 7, 8, 1, 4, 3, Ascii.f394SO, 0, 8, Ascii.f394SO, 2, 5, 6, 9, 1, Ascii.f386FF, Ascii.f393SI, 4, Ascii.f397VT, 0, Ascii.f384CR, 10, 3, 7, 1, 7, Ascii.f394SO, Ascii.f384CR, 0, 5, 8, 3, 4, Ascii.f393SI, 10, 6, 9, Ascii.f386FF, Ascii.f397VT, 2};
    private static byte[] DSbox_Test = {4, 10, 9, 2, Ascii.f384CR, 8, 0, Ascii.f394SO, 6, Ascii.f397VT, 1, Ascii.f386FF, 7, Ascii.f393SI, 5, 3, Ascii.f394SO, Ascii.f397VT, 4, Ascii.f386FF, 6, Ascii.f384CR, Ascii.f393SI, 10, 2, 3, 8, 1, 0, 7, 5, 9, 5, 8, 1, Ascii.f384CR, 10, 3, 4, 2, Ascii.f394SO, Ascii.f393SI, Ascii.f386FF, 7, 6, 0, 9, Ascii.f397VT, 7, Ascii.f384CR, 10, 1, 0, 8, 9, Ascii.f393SI, Ascii.f394SO, 4, 6, Ascii.f386FF, Ascii.f397VT, 2, 5, 3, 6, Ascii.f386FF, 7, 1, 5, Ascii.f393SI, Ascii.f384CR, 8, 4, 10, 9, Ascii.f394SO, 0, 3, Ascii.f397VT, 2, 4, Ascii.f397VT, 10, 0, 7, 2, 1, Ascii.f384CR, 3, 6, 8, 5, 9, Ascii.f386FF, Ascii.f393SI, Ascii.f394SO, Ascii.f384CR, Ascii.f397VT, 4, 1, 3, Ascii.f393SI, 5, 9, 0, 10, Ascii.f394SO, 7, 6, 8, 2, Ascii.f386FF, 1, Ascii.f393SI, Ascii.f384CR, 0, 5, 7, 10, 4, 9, 2, 3, Ascii.f394SO, 6, Ascii.f397VT, 8, Ascii.f386FF};
    private static byte[] DSbox_A = {10, 4, 5, 6, 8, 1, 3, 7, Ascii.f384CR, Ascii.f386FF, Ascii.f394SO, 0, 9, 2, Ascii.f397VT, Ascii.f393SI, 5, Ascii.f393SI, 4, 0, 2, Ascii.f384CR, Ascii.f397VT, 9, 1, 7, 6, 3, Ascii.f386FF, Ascii.f394SO, 10, 8, 7, Ascii.f393SI, Ascii.f386FF, Ascii.f394SO, 9, 4, 1, 0, 3, Ascii.f397VT, 5, 2, 6, 10, 8, Ascii.f384CR, 4, 10, 7, Ascii.f386FF, 0, Ascii.f393SI, 2, 8, Ascii.f394SO, 1, 6, 5, Ascii.f384CR, Ascii.f397VT, 9, 3, 7, 6, 4, Ascii.f397VT, 9, Ascii.f386FF, 2, 10, 1, 8, 0, Ascii.f394SO, Ascii.f393SI, Ascii.f384CR, 3, 5, 7, 6, 2, 4, Ascii.f384CR, 9, Ascii.f393SI, 0, 10, 1, 5, Ascii.f397VT, 8, Ascii.f394SO, Ascii.f386FF, 3, Ascii.f384CR, Ascii.f394SO, 4, 1, 7, 0, 5, 10, 3, Ascii.f386FF, 8, Ascii.f393SI, 6, 2, 9, Ascii.f397VT, 1, 3, 10, 9, 5, Ascii.f397VT, 4, Ascii.f393SI, 8, 6, 7, Ascii.f394SO, Ascii.f384CR, 0, 2, Ascii.f386FF};
    private static Hashtable sBoxes = new Hashtable();
    private int[] workingKey = null;

    /* JADX INFO: renamed from: S */
    private byte[] f4121S = Sbox_Default;

    static {
        addSBox(Profile.DEFAULT_PROFILE_NAME, Sbox_Default);
        addSBox("E-TEST", ESbox_Test);
        addSBox("E-A", ESbox_A);
        addSBox("E-B", ESbox_B);
        addSBox("E-C", ESbox_C);
        addSBox("E-D", ESbox_D);
        addSBox("Param-Z", Param_Z);
        addSBox("D-TEST", DSbox_Test);
        addSBox("D-A", DSbox_A);
    }

    private void GOST28147Func(int[] iArr, byte[] bArr, int i, byte[] bArr2, int i2) {
        int i3;
        int i4;
        int iBytesToint = bytesToint(bArr, i);
        int iBytesToint2 = bytesToint(bArr, i + 4);
        int i5 = 7;
        if (this.forEncryption) {
            for (int i6 = 0; i6 < 3; i6++) {
                int i7 = 0;
                while (i7 < 8) {
                    int iGOST28147_mainStep = iBytesToint2 ^ GOST28147_mainStep(iBytesToint, iArr[i7]);
                    i7++;
                    int i8 = iBytesToint;
                    iBytesToint = iGOST28147_mainStep;
                    iBytesToint2 = i8;
                }
            }
            i3 = iBytesToint2;
            i4 = iBytesToint;
            while (i5 > 0) {
                int iGOST28147_mainStep2 = i3 ^ GOST28147_mainStep(i4, iArr[i5]);
                i5--;
                i3 = i4;
                i4 = iGOST28147_mainStep2;
            }
        } else {
            int i9 = 0;
            while (i9 < 8) {
                int iGOST28147_mainStep3 = iBytesToint2 ^ GOST28147_mainStep(iBytesToint, iArr[i9]);
                i9++;
                int i10 = iBytesToint;
                iBytesToint = iGOST28147_mainStep3;
                iBytesToint2 = i10;
            }
            i3 = iBytesToint2;
            i4 = iBytesToint;
            for (int i11 = 0; i11 < 3; i11++) {
                int i12 = 7;
                while (i12 >= 0 && (i11 != 2 || i12 != 0)) {
                    int iGOST28147_mainStep4 = i3 ^ GOST28147_mainStep(i4, iArr[i12]);
                    i12--;
                    i3 = i4;
                    i4 = iGOST28147_mainStep4;
                }
            }
        }
        int iGOST28147_mainStep5 = GOST28147_mainStep(i4, iArr[0]) ^ i3;
        intTobytes(i4, bArr2, i2);
        intTobytes(iGOST28147_mainStep5, bArr2, i2 + 4);
    }

    private int GOST28147_mainStep(int i, int i2) {
        int i3 = i2 + i;
        byte[] bArr = this.f4121S;
        int i4 = bArr[i3 & 15] + (bArr[((i3 >> 4) & 15) + 16] << 4) + (bArr[((i3 >> 8) & 15) + 32] << 8) + (bArr[((i3 >> 12) & 15) + 48] << Ascii.f386FF) + (bArr[((i3 >> 16) & 15) + 64] << 16) + (bArr[((i3 >> 20) & 15) + 80] << Ascii.DC4) + (bArr[((i3 >> 24) & 15) + 96] << Ascii.CAN) + (bArr[((i3 >> 28) & 15) + 112] << Ascii.f387FS);
        return (i4 << 11) | (i4 >>> 21);
    }

    private static void addSBox(String str, byte[] bArr) {
        sBoxes.put(Strings.toUpperCase(str), bArr);
    }

    private int bytesToint(byte[] bArr, int i) {
        return ((bArr[i + 3] << Ascii.CAN) & ViewCompat.MEASURED_STATE_MASK) + ((bArr[i + 2] << 16) & 16711680) + ((bArr[i + 1] << 8) & MotionEventCompat.ACTION_POINTER_INDEX_MASK) + (bArr[i] & 255);
    }

    private int[] generateWorkingKey(boolean z, byte[] bArr) {
        this.forEncryption = z;
        if (bArr.length != 32) {
            throw new IllegalArgumentException("Key length invalid. Key needs to be 32 byte - 256 bit!!!");
        }
        int[] iArr = new int[8];
        for (int i = 0; i != 8; i++) {
            iArr[i] = bytesToint(bArr, i * 4);
        }
        return iArr;
    }

    public static byte[] getSBox(String str) {
        byte[] bArr = (byte[]) sBoxes.get(Strings.toUpperCase(str));
        if (bArr != null) {
            return Arrays.clone(bArr);
        }
        throw new IllegalArgumentException("Unknown S-Box - possible types: \"Default\", \"E-Test\", \"E-A\", \"E-B\", \"E-C\", \"E-D\", \"Param-Z\", \"D-Test\", \"D-A\".");
    }

    public static String getSBoxName(byte[] bArr) {
        Enumeration enumerationKeys = sBoxes.keys();
        while (enumerationKeys.hasMoreElements()) {
            String str = (String) enumerationKeys.nextElement();
            if (Arrays.areEqual((byte[]) sBoxes.get(str), bArr)) {
                return str;
            }
        }
        throw new IllegalArgumentException("SBOX provided did not map to a known one");
    }

    private void intTobytes(int i, byte[] bArr, int i2) {
        bArr[i2 + 3] = (byte) (i >>> 24);
        bArr[i2 + 2] = (byte) (i >>> 16);
        bArr[i2 + 1] = (byte) (i >>> 8);
        bArr[i2] = (byte) i;
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public String getAlgorithmName() {
        return "GOST28147";
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public int getBlockSize() {
        return 8;
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public void init(boolean z, CipherParameters cipherParameters) {
        if (!(cipherParameters instanceof ParametersWithSBox)) {
            if (cipherParameters instanceof KeyParameter) {
                this.workingKey = generateWorkingKey(z, ((KeyParameter) cipherParameters).getKey());
                return;
            } else {
                if (cipherParameters != null) {
                    throw new IllegalArgumentException("invalid parameter passed to GOST28147 init - " + cipherParameters.getClass().getName());
                }
                return;
            }
        }
        ParametersWithSBox parametersWithSBox = (ParametersWithSBox) cipherParameters;
        byte[] sBox = parametersWithSBox.getSBox();
        if (sBox.length != Sbox_Default.length) {
            throw new IllegalArgumentException("invalid S-box passed to GOST28147 init");
        }
        this.f4121S = Arrays.clone(sBox);
        if (parametersWithSBox.getParameters() != null) {
            this.workingKey = generateWorkingKey(z, ((KeyParameter) parametersWithSBox.getParameters()).getKey());
        }
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public int processBlock(byte[] bArr, int i, byte[] bArr2, int i2) {
        int[] iArr = this.workingKey;
        if (iArr == null) {
            throw new IllegalStateException("GOST28147 engine not initialised");
        }
        if (i + 8 > bArr.length) {
            throw new DataLengthException("input buffer too short");
        }
        if (i2 + 8 > bArr2.length) {
            throw new OutputLengthException("output buffer too short");
        }
        GOST28147Func(iArr, bArr, i, bArr2, i2);
        return 8;
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public void reset() {
    }
}
