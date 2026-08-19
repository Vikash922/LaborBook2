package com.itextpdf.io.codec.brotli.dec;

/* JADX INFO: loaded from: classes6.dex */
final class Decode {
    private static final int CODE_LENGTH_CODES = 18;
    private static final int CODE_LENGTH_REPEAT_CODE = 16;
    private static final int DEFAULT_CODE_LENGTH = 8;
    private static final int DISTANCE_CONTEXT_BITS = 2;
    private static final int HUFFMAN_TABLE_BITS = 8;
    private static final int HUFFMAN_TABLE_MASK = 255;
    private static final int LITERAL_CONTEXT_BITS = 6;
    private static final int NUM_BLOCK_LENGTH_CODES = 26;
    private static final int NUM_DISTANCE_SHORT_CODES = 16;
    private static final int NUM_INSERT_AND_COPY_CODES = 704;
    private static final int NUM_LITERAL_CODES = 256;
    private static final int[] CODE_LENGTH_CODE_ORDER = {1, 2, 3, 4, 0, 5, 17, 6, 16, 7, 8, 9, 10, 11, 12, 13, 14, 15};
    private static final int[] DISTANCE_SHORT_CODE_INDEX_OFFSET = {3, 2, 1, 0, 3, 3, 3, 3, 3, 3, 2, 2, 2, 2, 2, 2};
    private static final int[] DISTANCE_SHORT_CODE_VALUE_OFFSET = {0, 0, 0, 0, -1, 1, -2, 2, -3, 3, -1, 1, -2, 2, -3, 3};
    private static final int[] FIXED_TABLE = {131072, 131076, 131075, 196610, 131072, 131076, 131075, 262145, 131072, 131076, 131075, 196610, 131072, 131076, 131075, 262149};

    Decode() {
    }

    private static int decodeVarLenUnsignedByte(BitReader bitReader) {
        if (BitReader.readBits(bitReader, 1) == 0) {
            return 0;
        }
        int bits = BitReader.readBits(bitReader, 3);
        if (bits == 0) {
            return 1;
        }
        return BitReader.readBits(bitReader, bits) + (1 << bits);
    }

    private static void decodeMetaBlockLength(BitReader bitReader, State state) {
        state.inputEnd = BitReader.readBits(bitReader, 1) == 1;
        state.metaBlockLength = 0;
        state.isUncompressed = false;
        state.isMetadata = false;
        if (!state.inputEnd || BitReader.readBits(bitReader, 1) == 0) {
            int bits = BitReader.readBits(bitReader, 2) + 4;
            if (bits == 7) {
                state.isMetadata = true;
                if (BitReader.readBits(bitReader, 1) != 0) {
                    throw new BrotliRuntimeException("Corrupted reserved bit");
                }
                int bits2 = BitReader.readBits(bitReader, 2);
                if (bits2 == 0) {
                    return;
                }
                for (int i = 0; i < bits2; i++) {
                    int bits3 = BitReader.readBits(bitReader, 8);
                    if (bits3 == 0 && i + 1 == bits2 && bits2 > 1) {
                        throw new BrotliRuntimeException("Exuberant nibble");
                    }
                    state.metaBlockLength = (bits3 << (i * 8)) | state.metaBlockLength;
                }
            } else {
                for (int i2 = 0; i2 < bits; i2++) {
                    int bits4 = BitReader.readBits(bitReader, 4);
                    if (bits4 == 0 && i2 + 1 == bits && bits > 4) {
                        throw new BrotliRuntimeException("Exuberant nibble");
                    }
                    state.metaBlockLength = (bits4 << (i2 * 4)) | state.metaBlockLength;
                }
            }
            state.metaBlockLength++;
            if (state.inputEnd) {
                return;
            }
            state.isUncompressed = BitReader.readBits(bitReader, 1) == 1;
        }
    }

    private static int readSymbol(int[] iArr, int i, BitReader bitReader) {
        int i2 = (int) (bitReader.accumulator >>> bitReader.bitOffset);
        int i3 = i + (i2 & 255);
        int i4 = iArr[i3];
        int i5 = i4 >> 16;
        int i6 = i4 & 65535;
        if (i5 <= 8) {
            bitReader.bitOffset += i5;
            return i6;
        }
        int i7 = i3 + i6 + ((i2 & ((1 << i5) - 1)) >>> 8);
        bitReader.bitOffset += (iArr[i7] >> 16) + 8;
        return iArr[i7] & 65535;
    }

    private static int readBlockLength(int[] iArr, int i, BitReader bitReader) {
        BitReader.fillBitWindow(bitReader);
        int symbol = readSymbol(iArr, i, bitReader);
        return Prefix.BLOCK_LENGTH_OFFSET[symbol] + BitReader.readBits(bitReader, Prefix.BLOCK_LENGTH_N_BITS[symbol]);
    }

    private static int translateShortCodes(int i, int[] iArr, int i2) {
        return i < 16 ? iArr[(i2 + DISTANCE_SHORT_CODE_INDEX_OFFSET[i]) & 3] + DISTANCE_SHORT_CODE_VALUE_OFFSET[i] : i - 15;
    }

    private static void moveToFront(int[] iArr, int i) {
        int i2 = iArr[i];
        while (i > 0) {
            iArr[i] = iArr[i - 1];
            i--;
        }
        iArr[0] = i2;
    }

    private static void inverseMoveToFrontTransform(byte[] bArr, int i) {
        int[] iArr = new int[256];
        for (int i2 = 0; i2 < 256; i2++) {
            iArr[i2] = i2;
        }
        for (int i3 = 0; i3 < i; i3++) {
            int i4 = bArr[i3] & 255;
            bArr[i3] = (byte) iArr[i4];
            if (i4 != 0) {
                moveToFront(iArr, i4);
            }
        }
    }

    private static void readHuffmanCodeLengths(int[] iArr, int i, int[] iArr2, BitReader bitReader) {
        int[] iArr3 = new int[32];
        Huffman.buildHuffmanTable(iArr3, 0, 5, iArr, 18);
        int i2 = 8;
        int i3 = 32768;
        int i4 = 0;
        int i5 = 0;
        int i6 = 0;
        while (i4 < i && i3 > 0) {
            BitReader.readMoreInput(bitReader);
            BitReader.fillBitWindow(bitReader);
            int i7 = ((int) (bitReader.accumulator >>> bitReader.bitOffset)) & 31;
            bitReader.bitOffset += iArr3[i7] >> 16;
            int i8 = iArr3[i7] & 65535;
            if (i8 < 16) {
                int i9 = i4 + 1;
                iArr2[i4] = i8;
                if (i8 != 0) {
                    i3 -= 32768 >> i8;
                    i4 = i9;
                    i2 = i8;
                } else {
                    i4 = i9;
                }
                i6 = 0;
            } else {
                int i10 = i8 - 14;
                int i11 = i8 == 16 ? i2 : 0;
                if (i5 != i11) {
                    i6 = 0;
                    i5 = i11;
                }
                int bits = (i6 > 0 ? (i6 - 2) << i10 : i6) + BitReader.readBits(bitReader, i10) + 3;
                int i12 = bits - i6;
                if (i4 + i12 > i) {
                    throw new BrotliRuntimeException("symbol + repeatDelta > numSymbols");
                }
                int i13 = 0;
                while (i13 < i12) {
                    iArr2[i4] = i5;
                    i13++;
                    i4++;
                }
                if (i5 != 0) {
                    i3 -= i12 << (15 - i5);
                }
                i6 = bits;
            }
        }
        if (i3 != 0) {
            throw new BrotliRuntimeException("Unused space");
        }
        Utils.fillWithZeroes(iArr2, i4, i - i4);
    }

    /* JADX WARN: Removed duplicated region for block: B:54:0x00c5  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x00cf  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    static void readHuffmanCode(int r16, int[] r17, int r18, com.itextpdf.io.codec.brotli.dec.BitReader r19) {
        /*
            Method dump skipped, instruction units count: 215
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.itextpdf.io.codec.brotli.dec.Decode.readHuffmanCode(int, int[], int, com.itextpdf.io.codec.brotli.dec.BitReader):void");
    }

    private static int decodeContextMap(int i, byte[] bArr, BitReader bitReader) {
        BitReader.readMoreInput(bitReader);
        int iDecodeVarLenUnsignedByte = decodeVarLenUnsignedByte(bitReader) + 1;
        if (iDecodeVarLenUnsignedByte == 1) {
            Utils.fillWithZeroes(bArr, 0, i);
            return iDecodeVarLenUnsignedByte;
        }
        int bits = BitReader.readBits(bitReader, 1) == 1 ? BitReader.readBits(bitReader, 4) + 1 : 0;
        int[] iArr = new int[1080];
        readHuffmanCode(iDecodeVarLenUnsignedByte + bits, iArr, 0, bitReader);
        int i2 = 0;
        while (i2 < i) {
            BitReader.readMoreInput(bitReader);
            BitReader.fillBitWindow(bitReader);
            int symbol = readSymbol(iArr, 0, bitReader);
            if (symbol == 0) {
                bArr[i2] = 0;
            } else if (symbol <= bits) {
                for (int bits2 = (1 << symbol) + BitReader.readBits(bitReader, symbol); bits2 != 0; bits2--) {
                    if (i2 >= i) {
                        throw new BrotliRuntimeException("Corrupted context map");
                    }
                    bArr[i2] = 0;
                    i2++;
                }
            } else {
                bArr[i2] = (byte) (symbol - bits);
            }
            i2++;
        }
        if (BitReader.readBits(bitReader, 1) == 1) {
            inverseMoveToFrontTransform(bArr, i);
        }
        return iDecodeVarLenUnsignedByte;
    }

    private static void decodeBlockTypeAndLength(State state, int i) {
        int i2;
        BitReader bitReader = state.br;
        int[] iArr = state.blockTypeRb;
        int i3 = i * 2;
        BitReader.fillBitWindow(bitReader);
        int i4 = i * 1080;
        int symbol = readSymbol(state.blockTypeTrees, i4, bitReader);
        state.blockLength[i] = readBlockLength(state.blockLenTrees, i4, bitReader);
        if (symbol == 1) {
            i2 = iArr[i3 + 1] + 1;
        } else {
            i2 = symbol == 0 ? iArr[i3] : symbol - 2;
        }
        if (i2 >= state.numBlockTypes[i]) {
            i2 -= state.numBlockTypes[i];
        }
        int i5 = i3 + 1;
        iArr[i3] = iArr[i5];
        iArr[i5] = i2;
    }

    private static void decodeLiteralBlockSwitch(State state) {
        decodeBlockTypeAndLength(state, 0);
        int i = state.blockTypeRb[1];
        state.contextMapSlice = i << 6;
        state.literalTreeIndex = state.contextMap[state.contextMapSlice] & 255;
        state.literalTree = state.hGroup0.trees[state.literalTreeIndex];
        byte b = state.contextModes[i];
        state.contextLookupOffset1 = Context.LOOKUP_OFFSETS[b];
        state.contextLookupOffset2 = Context.LOOKUP_OFFSETS[b + 1];
    }

    private static void decodeCommandBlockSwitch(State state) {
        decodeBlockTypeAndLength(state, 1);
        state.treeCommandOffset = state.hGroup1.trees[state.blockTypeRb[3]];
    }

    private static void decodeDistanceBlockSwitch(State state) {
        decodeBlockTypeAndLength(state, 2);
        state.distContextMapSlice = state.blockTypeRb[5] << 2;
    }

    private static void maybeReallocateRingBuffer(State state) {
        int i;
        int i2;
        int i3 = state.maxRingBufferSize;
        if (i3 > state.expectedTotalSize) {
            while (true) {
                int i4 = i3 >> 1;
                if (i4 <= ((int) state.expectedTotalSize) + state.customDictionary.length) {
                    break;
                } else {
                    i3 = i4;
                }
            }
            if (!state.inputEnd && i3 < 16384 && state.maxRingBufferSize >= 16384) {
                i3 = 16384;
            }
        }
        if (i3 <= state.ringBufferSize) {
            return;
        }
        byte[] bArr = new byte[i3 + 37];
        if (state.ringBuffer != null) {
            System.arraycopy(state.ringBuffer, 0, bArr, 0, state.ringBufferSize);
        } else if (state.customDictionary.length != 0) {
            int length = state.customDictionary.length;
            if (length > state.maxBackwardDistance) {
                i2 = length - state.maxBackwardDistance;
                i = state.maxBackwardDistance;
            } else {
                i = length;
                i2 = 0;
            }
            System.arraycopy(state.customDictionary, i2, bArr, 0, i);
            state.pos = i;
            state.bytesToIgnore = i;
        }
        state.ringBuffer = bArr;
        state.ringBufferSize = i3;
    }

    private static void readMetablockInfo(State state) {
        BitReader bitReader = state.br;
        if (state.inputEnd) {
            state.nextRunningState = 10;
            state.bytesToWrite = state.pos;
            state.bytesWritten = 0;
            state.runningState = 12;
            return;
        }
        state.hGroup0.codes = null;
        state.hGroup0.trees = null;
        state.hGroup1.codes = null;
        state.hGroup1.trees = null;
        state.hGroup2.codes = null;
        state.hGroup2.trees = null;
        BitReader.readMoreInput(bitReader);
        decodeMetaBlockLength(bitReader, state);
        if (state.metaBlockLength != 0 || state.isMetadata) {
            if (state.isUncompressed || state.isMetadata) {
                BitReader.jumpToByteBoundary(bitReader);
                state.runningState = state.isMetadata ? 4 : 5;
            } else {
                state.runningState = 2;
            }
            if (state.isMetadata) {
                return;
            }
            state.expectedTotalSize += (long) state.metaBlockLength;
            if (state.ringBufferSize < state.maxRingBufferSize) {
                maybeReallocateRingBuffer(state);
            }
        }
    }

    private static void readMetablockHuffmanCodesAndContextMaps(State state) {
        BitReader bitReader = state.br;
        for (int i = 0; i < 3; i++) {
            state.numBlockTypes[i] = decodeVarLenUnsignedByte(bitReader) + 1;
            state.blockLength[i] = 268435456;
            if (state.numBlockTypes[i] > 1) {
                int i2 = i * 1080;
                readHuffmanCode(state.numBlockTypes[i] + 2, state.blockTypeTrees, i2, bitReader);
                readHuffmanCode(26, state.blockLenTrees, i2, bitReader);
                state.blockLength[i] = readBlockLength(state.blockLenTrees, i2, bitReader);
            }
        }
        BitReader.readMoreInput(bitReader);
        state.distancePostfixBits = BitReader.readBits(bitReader, 2);
        state.numDirectDistanceCodes = (BitReader.readBits(bitReader, 4) << state.distancePostfixBits) + 16;
        state.distancePostfixMask = (1 << state.distancePostfixBits) - 1;
        int i3 = state.numDirectDistanceCodes + (48 << state.distancePostfixBits);
        state.contextModes = new byte[state.numBlockTypes[0]];
        int i4 = 0;
        while (i4 < state.numBlockTypes[0]) {
            int iMin = Math.min(i4 + 96, state.numBlockTypes[0]);
            while (i4 < iMin) {
                state.contextModes[i4] = (byte) (BitReader.readBits(bitReader, 2) << 1);
                i4++;
            }
            BitReader.readMoreInput(bitReader);
        }
        state.contextMap = new byte[state.numBlockTypes[0] << 6];
        int iDecodeContextMap = decodeContextMap(state.numBlockTypes[0] << 6, state.contextMap, bitReader);
        state.trivialLiteralContext = true;
        int i5 = 0;
        while (true) {
            if (i5 >= (state.numBlockTypes[0] << 6)) {
                break;
            }
            if (state.contextMap[i5] != (i5 >> 6)) {
                state.trivialLiteralContext = false;
                break;
            }
            i5++;
        }
        state.distContextMap = new byte[state.numBlockTypes[2] << 2];
        int iDecodeContextMap2 = decodeContextMap(state.numBlockTypes[2] << 2, state.distContextMap, bitReader);
        HuffmanTreeGroup.init(state.hGroup0, 256, iDecodeContextMap);
        HuffmanTreeGroup.init(state.hGroup1, 704, state.numBlockTypes[1]);
        HuffmanTreeGroup.init(state.hGroup2, i3, iDecodeContextMap2);
        HuffmanTreeGroup.decode(state.hGroup0, bitReader);
        HuffmanTreeGroup.decode(state.hGroup1, bitReader);
        HuffmanTreeGroup.decode(state.hGroup2, bitReader);
        state.contextMapSlice = 0;
        state.distContextMapSlice = 0;
        state.contextLookupOffset1 = Context.LOOKUP_OFFSETS[state.contextModes[0]];
        state.contextLookupOffset2 = Context.LOOKUP_OFFSETS[state.contextModes[0] + 1];
        state.literalTreeIndex = 0;
        state.literalTree = state.hGroup0.trees[0];
        state.treeCommandOffset = state.hGroup1.trees[0];
        int[] iArr = state.blockTypeRb;
        int[] iArr2 = state.blockTypeRb;
        state.blockTypeRb[4] = 1;
        iArr2[2] = 1;
        iArr[0] = 1;
        int[] iArr3 = state.blockTypeRb;
        int[] iArr4 = state.blockTypeRb;
        state.blockTypeRb[5] = 0;
        iArr4[3] = 0;
        iArr3[1] = 0;
    }

    private static void copyUncompressedData(State state) {
        BitReader bitReader = state.br;
        byte[] bArr = state.ringBuffer;
        if (state.metaBlockLength <= 0) {
            BitReader.reload(bitReader);
            state.runningState = 1;
            return;
        }
        int iMin = Math.min(state.ringBufferSize - state.pos, state.metaBlockLength);
        BitReader.copyBytes(bitReader, bArr, state.pos, iMin);
        state.metaBlockLength -= iMin;
        state.pos += iMin;
        if (state.pos == state.ringBufferSize) {
            state.nextRunningState = 5;
            state.bytesToWrite = state.ringBufferSize;
            state.bytesWritten = 0;
            state.runningState = 12;
            return;
        }
        BitReader.reload(bitReader);
        state.runningState = 1;
    }

    private static boolean writeRingBuffer(State state) {
        if (state.bytesToIgnore != 0) {
            state.bytesWritten += state.bytesToIgnore;
            state.bytesToIgnore = 0;
        }
        int iMin = Math.min(state.outputLength - state.outputUsed, state.bytesToWrite - state.bytesWritten);
        if (iMin != 0) {
            System.arraycopy(state.ringBuffer, state.bytesWritten, state.output, state.outputOffset + state.outputUsed, iMin);
            state.outputUsed += iMin;
            state.bytesWritten += iMin;
        }
        return state.outputUsed < state.outputLength;
    }

    static void setCustomDictionary(State state, byte[] bArr) {
        if (bArr == null) {
            bArr = new byte[0];
        }
        state.customDictionary = bArr;
    }

    /* JADX WARN: Removed duplicated region for block: B:110:0x031e  */
    /* JADX WARN: Removed duplicated region for block: B:162:0x00ec A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:163:0x0210 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:164:0x00e8 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:171:0x034d A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:180:0x0015 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:181:0x0015 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:196:? A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:48:0x014e A[LOOP:2: B:48:0x014e->B:192:?, LOOP_START] */
    /* JADX WARN: Removed duplicated region for block: B:56:0x0192  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    static void decompress(com.itextpdf.io.codec.brotli.dec.State r19) {
        /*
            Method dump skipped, instruction units count: 974
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.itextpdf.io.codec.brotli.dec.Decode.decompress(com.itextpdf.io.codec.brotli.dec.State):void");
    }
}
