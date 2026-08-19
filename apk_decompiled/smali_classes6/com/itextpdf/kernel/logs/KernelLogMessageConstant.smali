.class public final Lcom/itextpdf/kernel/logs/KernelLogMessageConstant;
.super Ljava/lang/Object;
.source "KernelLogMessageConstant.java"


# static fields
.field public static final CORRUPTED_OUTLINE_DICTIONARY_HAS_INFINITE_LOOP:Ljava/lang/String; = "Document outline dictionary is corrupted: some outline (PDF object: \"{0}\") has wrong first/next link entry. Next outlines in this dictionary will be unprocessed."

.field public static final DCTDECODE_FILTER_DECODING:Ljava/lang/String; = "DCTDecode filter decoding into the bit map is not supported. The stream data would be left in JPEG baseline format"

.field public static final FEATURE_IS_NOT_SUPPORTED:Ljava/lang/String; = "Exception was thrown: {0}. The feature {1} is probably not supported by your XML processor."

.field public static final FULL_COMPRESSION_APPEND_MODE_XREF_STREAM_INCONSISTENCY:Ljava/lang/String; = "Full compression mode was requested to be switched off in append mode but the original document has cross-reference stream, not cross-reference table. Falling back to cross-reference stream in appended document and switching full compression on"

.field public static final FULL_COMPRESSION_APPEND_MODE_XREF_TABLE_INCONSISTENCY:Ljava/lang/String; = "Full compression mode requested in append mode but the original document has cross-reference table, not cross-reference stream. Falling back to cross-reference table in appended document and switching full compression off"

.field public static final JPXDECODE_FILTER_DECODING:Ljava/lang/String; = "JPXDecode filter decoding into the bit map is not supported. The stream data would be left in JPEG2000 format"

.field public static final UNABLE_TO_PARSE_COLOR_WITHIN_COLORSPACE:Ljava/lang/String; = "Unable to parse color {0} within {1} color space"

.field public static final UNCONFIRMED_EVENT:Ljava/lang/String; = "Event for the product {0} with type {1} was reported but was not confirmed. Probably appropriate process fail"

.field public static final UNKNOWN_PRODUCT_INVOLVED:Ljava/lang/String; = "Unknown product {0} was involved into PDF processing. It will be ignored"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
