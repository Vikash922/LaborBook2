package com.google.common.hash;

import com.google.common.base.Preconditions;
import com.google.errorprone.annotations.Immutable;
import java.io.Serializable;
import java.nio.ByteBuffer;
import javax.annotation.CheckForNull;

/* JADX INFO: loaded from: classes6.dex */
@Immutable
@ElementTypesAreNonnullByDefault
final class SipHashFunction extends AbstractHashFunction implements Serializable {
    static final HashFunction SIP_HASH_24 = new SipHashFunction(2, 4, 506097522914230528L, 1084818905618843912L);
    private static final long serialVersionUID = 0;

    /* JADX INFO: renamed from: c */
    private final int f440c;

    /* JADX INFO: renamed from: d */
    private final int f441d;

    /* JADX INFO: renamed from: k0 */
    private final long f442k0;

    /* JADX INFO: renamed from: k1 */
    private final long f443k1;

    @Override // com.google.common.hash.HashFunction
    public int bits() {
        return 64;
    }

    SipHashFunction(int i, int i2, long j, long j2) {
        Preconditions.checkArgument(i > 0, "The number of SipRound iterations (c=%s) during Compression must be positive.", i);
        Preconditions.checkArgument(i2 > 0, "The number of SipRound iterations (d=%s) during Finalization must be positive.", i2);
        this.f440c = i;
        this.f441d = i2;
        this.f442k0 = j;
        this.f443k1 = j2;
    }

    @Override // com.google.common.hash.HashFunction
    public Hasher newHasher() {
        return new SipHasher(this.f440c, this.f441d, this.f442k0, this.f443k1);
    }

    public String toString() {
        int i = this.f440c;
        int i2 = this.f441d;
        long j = this.f442k0;
        return new StringBuilder(81).append("Hashing.sipHash").append(i).append(i2).append("(").append(j).append(", ").append(this.f443k1).append(")").toString();
    }

    public boolean equals(@CheckForNull Object obj) {
        if (!(obj instanceof SipHashFunction)) {
            return false;
        }
        SipHashFunction sipHashFunction = (SipHashFunction) obj;
        return this.f440c == sipHashFunction.f440c && this.f441d == sipHashFunction.f441d && this.f442k0 == sipHashFunction.f442k0 && this.f443k1 == sipHashFunction.f443k1;
    }

    public int hashCode() {
        return (int) ((((long) ((getClass().hashCode() ^ this.f440c) ^ this.f441d)) ^ this.f442k0) ^ this.f443k1);
    }

    private static final class SipHasher extends AbstractStreamingHasher {
        private static final int CHUNK_SIZE = 8;

        /* JADX INFO: renamed from: b */
        private long f444b;

        /* JADX INFO: renamed from: c */
        private final int f445c;

        /* JADX INFO: renamed from: d */
        private final int f446d;
        private long finalM;

        /* JADX INFO: renamed from: v0 */
        private long f447v0;

        /* JADX INFO: renamed from: v1 */
        private long f448v1;

        /* JADX INFO: renamed from: v2 */
        private long f449v2;

        /* JADX INFO: renamed from: v3 */
        private long f450v3;

        SipHasher(int i, int i2, long j, long j2) {
            super(8);
            this.f444b = 0L;
            this.finalM = 0L;
            this.f445c = i;
            this.f446d = i2;
            this.f447v0 = 8317987319222330741L ^ j;
            this.f448v1 = 7237128888997146477L ^ j2;
            this.f449v2 = 7816392313619706465L ^ j;
            this.f450v3 = 8387220255154660723L ^ j2;
        }

        @Override // com.google.common.hash.AbstractStreamingHasher
        protected void process(ByteBuffer byteBuffer) {
            this.f444b += 8;
            processM(byteBuffer.getLong());
        }

        @Override // com.google.common.hash.AbstractStreamingHasher
        protected void processRemaining(ByteBuffer byteBuffer) {
            this.f444b += (long) byteBuffer.remaining();
            int i = 0;
            while (byteBuffer.hasRemaining()) {
                this.finalM ^= (((long) byteBuffer.get()) & 255) << i;
                i += 8;
            }
        }

        @Override // com.google.common.hash.AbstractStreamingHasher
        protected HashCode makeHash() {
            long j = this.finalM ^ (this.f444b << 56);
            this.finalM = j;
            processM(j);
            this.f449v2 ^= 255;
            sipRound(this.f446d);
            return HashCode.fromLong(((this.f447v0 ^ this.f448v1) ^ this.f449v2) ^ this.f450v3);
        }

        private void processM(long j) {
            this.f450v3 ^= j;
            sipRound(this.f445c);
            this.f447v0 = j ^ this.f447v0;
        }

        private void sipRound(int i) {
            for (int i2 = 0; i2 < i; i2++) {
                long j = this.f447v0;
                long j2 = this.f448v1;
                this.f447v0 = j + j2;
                this.f449v2 += this.f450v3;
                this.f448v1 = Long.rotateLeft(j2, 13);
                long jRotateLeft = Long.rotateLeft(this.f450v3, 16);
                long j3 = this.f448v1;
                long j4 = this.f447v0;
                this.f448v1 = j3 ^ j4;
                this.f450v3 = jRotateLeft ^ this.f449v2;
                long jRotateLeft2 = Long.rotateLeft(j4, 32);
                long j5 = this.f449v2;
                long j6 = this.f448v1;
                this.f449v2 = j5 + j6;
                this.f447v0 = jRotateLeft2 + this.f450v3;
                this.f448v1 = Long.rotateLeft(j6, 17);
                long jRotateLeft3 = Long.rotateLeft(this.f450v3, 21);
                long j7 = this.f448v1;
                long j8 = this.f449v2;
                this.f448v1 = j7 ^ j8;
                this.f450v3 = jRotateLeft3 ^ this.f447v0;
                this.f449v2 = Long.rotateLeft(j8, 32);
            }
        }
    }
}
