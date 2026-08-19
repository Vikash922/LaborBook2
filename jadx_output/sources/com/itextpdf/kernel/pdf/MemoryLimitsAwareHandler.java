package com.itextpdf.kernel.pdf;

import com.itextpdf.kernel.exceptions.KernelExceptionMessageConstant;
import com.itextpdf.kernel.exceptions.MemoryLimitsAwareException;
import java.util.HashSet;

/* JADX INFO: loaded from: classes6.dex */
public class MemoryLimitsAwareHandler {
    private static final int MAX_NUMBER_OF_ELEMENTS_IN_XREF_STRUCTURE = 50000000;
    private static final int SINGLE_DECOMPRESSED_PDF_STREAM_MIN_SIZE = 21474836;
    private static final int SINGLE_SCALE_COEFFICIENT = 100;
    private static final long SUM_OF_DECOMPRESSED_PDF_STREAMS_MIN_SIZE = 107374182;
    private static final int SUM_SCALE_COEFFICIENT = 500;
    private long allMemoryUsedForDecompression;
    boolean considerCurrentPdfStream;
    private int maxNumberOfElementsInXrefStructure;
    private long maxSizeOfDecompressedPdfStreamsSum;
    private int maxSizeOfSingleDecompressedPdfStream;
    private long memoryUsedForCurrentPdfStreamDecompression;

    private static long calculateDefaultParameter(long j, int i, long j2) {
        long j3 = i;
        long j4 = j * j3;
        if (j4 < j2) {
            j4 = j2;
        }
        long j5 = j2 * j3;
        return j4 > j5 ? j5 : j4;
    }

    public MemoryLimitsAwareHandler() {
        this(SINGLE_DECOMPRESSED_PDF_STREAM_MIN_SIZE, SUM_OF_DECOMPRESSED_PDF_STREAMS_MIN_SIZE, MAX_NUMBER_OF_ELEMENTS_IN_XREF_STRUCTURE);
    }

    public MemoryLimitsAwareHandler(long j) {
        this((int) calculateDefaultParameter(j, 100, 21474836L), calculateDefaultParameter(j, 500, SUM_OF_DECOMPRESSED_PDF_STREAMS_MIN_SIZE), MAX_NUMBER_OF_ELEMENTS_IN_XREF_STRUCTURE);
    }

    private MemoryLimitsAwareHandler(int i, long j, int i2) {
        this.allMemoryUsedForDecompression = 0L;
        this.memoryUsedForCurrentPdfStreamDecompression = 0L;
        this.considerCurrentPdfStream = false;
        this.maxSizeOfSingleDecompressedPdfStream = i;
        this.maxSizeOfDecompressedPdfStreamsSum = j;
        this.maxNumberOfElementsInXrefStructure = i2;
    }

    public int getMaxSizeOfSingleDecompressedPdfStream() {
        return this.maxSizeOfSingleDecompressedPdfStream;
    }

    public MemoryLimitsAwareHandler setMaxSizeOfSingleDecompressedPdfStream(int i) {
        this.maxSizeOfSingleDecompressedPdfStream = i;
        return this;
    }

    public long getMaxSizeOfDecompressedPdfStreamsSum() {
        return this.maxSizeOfDecompressedPdfStreamsSum;
    }

    public MemoryLimitsAwareHandler setMaxSizeOfDecompressedPdfStreamsSum(long j) {
        this.maxSizeOfDecompressedPdfStreamsSum = j;
        return this;
    }

    public boolean isMemoryLimitsAwarenessRequiredOnDecompression(PdfArray pdfArray) {
        HashSet hashSet = new HashSet();
        for (int i = 0; i < pdfArray.size(); i++) {
            if (!hashSet.add(pdfArray.getAsName(i))) {
                return true;
            }
        }
        return false;
    }

    public int getMaxNumberOfElementsInXrefStructure() {
        return this.maxNumberOfElementsInXrefStructure;
    }

    public void setMaxNumberOfElementsInXrefStructure(int i) {
        this.maxNumberOfElementsInXrefStructure = i;
    }

    public void checkIfXrefStructureExceedsTheLimit(int i) {
        if (i - 1 > this.maxNumberOfElementsInXrefStructure) {
            throw new MemoryLimitsAwareException(KernelExceptionMessageConstant.XREF_STRUCTURE_SIZE_EXCEEDED_THE_LIMIT);
        }
    }

    MemoryLimitsAwareHandler considerBytesOccupiedByDecompressedPdfStream(long j) {
        if (this.considerCurrentPdfStream && this.memoryUsedForCurrentPdfStreamDecompression < j) {
            this.memoryUsedForCurrentPdfStreamDecompression = j;
            if (j > this.maxSizeOfSingleDecompressedPdfStream) {
                throw new MemoryLimitsAwareException(KernelExceptionMessageConstant.f2916x3e8b5f7f);
            }
        }
        return this;
    }

    MemoryLimitsAwareHandler beginDecompressedPdfStreamProcessing() {
        ensureCurrentStreamIsReset();
        this.considerCurrentPdfStream = true;
        return this;
    }

    MemoryLimitsAwareHandler endDecompressedPdfStreamProcessing() {
        long j = this.allMemoryUsedForDecompression + this.memoryUsedForCurrentPdfStreamDecompression;
        this.allMemoryUsedForDecompression = j;
        if (j > this.maxSizeOfDecompressedPdfStreamsSum) {
            throw new MemoryLimitsAwareException(KernelExceptionMessageConstant.f2915x16d50bf4);
        }
        ensureCurrentStreamIsReset();
        this.considerCurrentPdfStream = false;
        return this;
    }

    long getAllMemoryUsedForDecompression() {
        return this.allMemoryUsedForDecompression;
    }

    private void ensureCurrentStreamIsReset() {
        this.memoryUsedForCurrentPdfStreamDecompression = 0L;
    }
}
