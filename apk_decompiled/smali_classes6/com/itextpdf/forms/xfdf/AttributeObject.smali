.class public Lcom/itextpdf/forms/xfdf/AttributeObject;
.super Ljava/lang/Object;
.source "AttributeObject.java"


# instance fields
.field private name:Ljava/lang/String;

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 65
    iput-object p1, p0, Lcom/itextpdf/forms/xfdf/AttributeObject;->name:Ljava/lang/String;

    .line 66
    iput-object p2, p0, Lcom/itextpdf/forms/xfdf/AttributeObject;->value:Ljava/lang/String;

    return-void

    .line 63
    :cond_0
    new-instance p1, Lcom/itextpdf/forms/exceptions/XfdfException;

    const-string p2, "Attribute name or value are missing"

    invoke-direct {p1, p2}, Lcom/itextpdf/forms/exceptions/XfdfException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/itextpdf/forms/xfdf/AttributeObject;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/itextpdf/forms/xfdf/AttributeObject;->value:Ljava/lang/String;

    return-object v0
.end method
