.class public Lcom/itextpdf/styledxmlparser/jsoup/parser/ParseSettings;
.super Ljava/lang/Object;
.source "ParseSettings.java"


# static fields
.field public static final htmlDefault:Lcom/itextpdf/styledxmlparser/jsoup/parser/ParseSettings;

.field public static final preserveCase:Lcom/itextpdf/styledxmlparser/jsoup/parser/ParseSettings;


# instance fields
.field private final preserveAttributeCase:Z

.field private final preserveTagCase:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 42
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/ParseSettings;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/ParseSettings;-><init>(ZZ)V

    sput-object v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/ParseSettings;->htmlDefault:Lcom/itextpdf/styledxmlparser/jsoup/parser/ParseSettings;

    .line 43
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/ParseSettings;

    const/4 v1, 0x1

    invoke-direct {v0, v1, v1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/ParseSettings;-><init>(ZZ)V

    sput-object v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/ParseSettings;->preserveCase:Lcom/itextpdf/styledxmlparser/jsoup/parser/ParseSettings;

    return-void
.end method

.method constructor <init>(Lcom/itextpdf/styledxmlparser/jsoup/parser/ParseSettings;)V
    .locals 1

    .line 74
    iget-boolean v0, p1, Lcom/itextpdf/styledxmlparser/jsoup/parser/ParseSettings;->preserveTagCase:Z

    iget-boolean p1, p1, Lcom/itextpdf/styledxmlparser/jsoup/parser/ParseSettings;->preserveAttributeCase:Z

    invoke-direct {p0, v0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/ParseSettings;-><init>(ZZ)V

    return-void
.end method

.method public constructor <init>(ZZ)V
    .locals 0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-boolean p1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/ParseSettings;->preserveTagCase:Z

    .line 70
    iput-boolean p2, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/ParseSettings;->preserveAttributeCase:Z

    return-void
.end method


# virtual methods
.method public normalizeAttribute(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 91
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 92
    iget-boolean v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/ParseSettings;->preserveAttributeCase:Z

    if-nez v0, :cond_0

    .line 93
    invoke-static {p1}, Lcom/itextpdf/styledxmlparser/jsoup/internal/Normalizer;->lowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method normalizeAttributes(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;
    .locals 1

    if-eqz p1, :cond_0

    .line 98
    iget-boolean v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/ParseSettings;->preserveAttributeCase:Z

    if-nez v0, :cond_0

    .line 99
    invoke-virtual {p1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;->normalize()V

    :cond_0
    return-object p1
.end method

.method public normalizeTag(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 81
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 82
    iget-boolean v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/ParseSettings;->preserveTagCase:Z

    if-nez v0, :cond_0

    .line 83
    invoke-static {p1}, Lcom/itextpdf/styledxmlparser/jsoup/internal/Normalizer;->lowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public preserveAttributeCase()Z
    .locals 1

    .line 60
    iget-boolean v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/ParseSettings;->preserveAttributeCase:Z

    return v0
.end method

.method public preserveTagCase()Z
    .locals 1

    .line 53
    iget-boolean v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/ParseSettings;->preserveTagCase:Z

    return v0
.end method
