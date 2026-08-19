.class public Lcom/itextpdf/io/exceptions/FontCompressionException;
.super Lcom/itextpdf/commons/exceptions/ITextException;
.source "FontCompressionException.java"


# static fields
.field public static final BROTLI_DECODING_FAILED:Ljava/lang/String; = "Woff2 brotli decoding exception"

.field public static final BUFFER_READ_FAILED:Ljava/lang/String; = "Reading woff2 exception"

.field public static final INCORRECT_SIGNATURE:Ljava/lang/String; = "Incorrect woff2 signature"

.field public static final LOCA_SIZE_OVERFLOW:Ljava/lang/String; = "woff2 loca table content size overflow exception"

.field public static final PADDING_OVERFLOW:Ljava/lang/String; = "woff2 padding overflow exception"

.field public static final READ_BASE_128_FAILED:Ljava/lang/String; = "Reading woff2 base 128 number exception"

.field public static final READ_COLLECTION_HEADER_FAILED:Ljava/lang/String; = "Reading collection woff2 header exception"

.field public static final READ_HEADER_FAILED:Ljava/lang/String; = "Reading woff2 header exception"

.field public static final READ_TABLE_DIRECTORY_FAILED:Ljava/lang/String; = "Reading woff2 tables directory exception"

.field public static final RECONSTRUCT_GLYF_TABLE_FAILED:Ljava/lang/String; = "Reconstructing woff2 glyf table exception"

.field public static final RECONSTRUCT_GLYPH_FAILED:Ljava/lang/String; = "Reconstructing woff2 glyph exception"

.field public static final RECONSTRUCT_HMTX_TABLE_FAILED:Ljava/lang/String; = "Reconstructing woff2 hmtx table exception"

.field public static final RECONSTRUCT_POINT_FAILED:Ljava/lang/String; = "Reconstructing woff2 glyph\'s point exception"

.field public static final RECONSTRUCT_TABLE_DIRECTORY_FAILED:Ljava/lang/String; = "Reconstructing woff2 table directory exception"

.field public static final WRITE_FAILED:Ljava/lang/String; = "Writing woff2 exception"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 64
    invoke-direct {p0}, Lcom/itextpdf/commons/exceptions/ITextException;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 68
    invoke-direct {p0, p1}, Lcom/itextpdf/commons/exceptions/ITextException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 72
    invoke-direct {p0, p1, p2}, Lcom/itextpdf/commons/exceptions/ITextException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
