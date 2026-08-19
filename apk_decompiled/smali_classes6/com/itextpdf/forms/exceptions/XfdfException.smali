.class public Lcom/itextpdf/forms/exceptions/XfdfException;
.super Lcom/itextpdf/commons/exceptions/ITextException;
.source "XfdfException.java"


# static fields
.field public static final ATTRIBUTE_NAME_OR_VALUE_MISSING:Ljava/lang/String; = "Attribute name or value are missing"

.field public static final PAGE_IS_MISSING:Ljava/lang/String; = "Required Page attribute is missing."


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Lcom/itextpdf/commons/exceptions/ITextException;-><init>(Ljava/lang/String;)V

    return-void
.end method
