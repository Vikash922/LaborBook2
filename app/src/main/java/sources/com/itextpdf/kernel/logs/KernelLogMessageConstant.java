package com.itextpdf.kernel.logs;

/* JADX INFO: loaded from: classes6.dex */
public final class KernelLogMessageConstant {
    public static final String CORRUPTED_OUTLINE_DICTIONARY_HAS_INFINITE_LOOP = "Document outline dictionary is corrupted: some outline (PDF object: \"{0}\") has wrong first/next link entry. Next outlines in this dictionary will be unprocessed.";
    public static final String DCTDECODE_FILTER_DECODING = "DCTDecode filter decoding into the bit map is not supported. The stream data would be left in JPEG baseline format";
    public static final String FEATURE_IS_NOT_SUPPORTED = "Exception was thrown: {0}. The feature {1} is probably not supported by your XML processor.";
    public static final String FULL_COMPRESSION_APPEND_MODE_XREF_STREAM_INCONSISTENCY = "Full compression mode was requested to be switched off in append mode but the original document has cross-reference stream, not cross-reference table. Falling back to cross-reference stream in appended document and switching full compression on";
    public static final String FULL_COMPRESSION_APPEND_MODE_XREF_TABLE_INCONSISTENCY = "Full compression mode requested in append mode but the original document has cross-reference table, not cross-reference stream. Falling back to cross-reference table in appended document and switching full compression off";
    public static final String JPXDECODE_FILTER_DECODING = "JPXDecode filter decoding into the bit map is not supported. The stream data would be left in JPEG2000 format";
    public static final String UNABLE_TO_PARSE_COLOR_WITHIN_COLORSPACE = "Unable to parse color {0} within {1} color space";
    public static final String UNCONFIRMED_EVENT = "Event for the product {0} with type {1} was reported but was not confirmed. Probably appropriate process fail";
    public static final String UNKNOWN_PRODUCT_INVOLVED = "Unknown product {0} was involved into PDF processing. It will be ignored";

    private KernelLogMessageConstant() {
    }
}
