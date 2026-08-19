.class public Lcom/itextpdf/styledxmlparser/css/resolve/CssInheritance;
.super Ljava/lang/Object;
.source "CssInheritance.java"

# interfaces
.implements Lcom/itextpdf/styledxmlparser/css/resolve/IStyleInheritance;


# static fields
.field private static final INHERITABLE_PROPERTIES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 61
    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x35

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "color"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "visibility"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "hanging-punctuation"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "hyphens"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "letter-spacing"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "line-height"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "overflow-wrap"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "tab-size"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "text-align"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "text-align-last"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "text-indent"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "text-justify"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "text-transform"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string v3, "white-space"

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string v3, "word-break"

    aput-object v3, v1, v2

    const/16 v2, 0xf

    const-string v3, "word-spacing"

    aput-object v3, v1, v2

    const/16 v2, 0x10

    const-string v3, "word-wrap"

    aput-object v3, v1, v2

    const/16 v2, 0x11

    const-string v3, "text-shadow"

    aput-object v3, v1, v2

    const/16 v2, 0x12

    const-string v3, "text-underline-position"

    aput-object v3, v1, v2

    const/16 v2, 0x13

    const-string v3, "font"

    aput-object v3, v1, v2

    const/16 v2, 0x14

    const-string v3, "font-family"

    aput-object v3, v1, v2

    const/16 v2, 0x15

    const-string v3, "font-feature-settings"

    aput-object v3, v1, v2

    const/16 v2, 0x16

    const-string v3, "font-kerning"

    aput-object v3, v1, v2

    const/16 v2, 0x17

    const-string v3, "font-language-override"

    aput-object v3, v1, v2

    const/16 v2, 0x18

    const-string v3, "font-size"

    aput-object v3, v1, v2

    const/16 v2, 0x19

    const-string v3, "font-size-adjust"

    aput-object v3, v1, v2

    const/16 v2, 0x1a

    const-string v3, "font-stretch"

    aput-object v3, v1, v2

    const/16 v2, 0x1b

    const-string v3, "font-style"

    aput-object v3, v1, v2

    const/16 v2, 0x1c

    const-string v3, "font-synthesis"

    aput-object v3, v1, v2

    const/16 v2, 0x1d

    const-string v3, "font-variant"

    aput-object v3, v1, v2

    const/16 v2, 0x1e

    const-string v3, "font-variant-alternates"

    aput-object v3, v1, v2

    const/16 v2, 0x1f

    const-string v3, "font-variant-caps"

    aput-object v3, v1, v2

    const/16 v2, 0x20

    const-string v3, "font-variant-east-asian"

    aput-object v3, v1, v2

    const/16 v2, 0x21

    const-string v3, "font-variant-ligatures"

    aput-object v3, v1, v2

    const/16 v2, 0x22

    const-string v3, "font-variant-numeric"

    aput-object v3, v1, v2

    const/16 v2, 0x23

    const-string v3, "font-variant-position"

    aput-object v3, v1, v2

    const/16 v2, 0x24

    const-string v3, "font-weight"

    aput-object v3, v1, v2

    const/16 v2, 0x25

    const-string v3, "direction"

    aput-object v3, v1, v2

    const/16 v2, 0x26

    const-string v3, "text-orientation"

    aput-object v3, v1, v2

    const/16 v2, 0x27

    const-string v3, "text-combine-upright"

    aput-object v3, v1, v2

    const/16 v2, 0x28

    const-string v3, "unicode-bidi"

    aput-object v3, v1, v2

    const/16 v2, 0x29

    const-string v3, "writing-mode"

    aput-object v3, v1, v2

    const/16 v2, 0x2a

    const-string v3, "border-collapse"

    aput-object v3, v1, v2

    const/16 v2, 0x2b

    const-string v3, "border-spacing"

    aput-object v3, v1, v2

    const/16 v2, 0x2c

    const-string v3, "caption-side"

    aput-object v3, v1, v2

    const/16 v2, 0x2d

    const-string v3, "empty-cells"

    aput-object v3, v1, v2

    const/16 v2, 0x2e

    const-string v3, "list-style"

    aput-object v3, v1, v2

    const/16 v2, 0x2f

    const-string v3, "list-style-image"

    aput-object v3, v1, v2

    const/16 v2, 0x30

    const-string v3, "list-style-position"

    aput-object v3, v1, v2

    const/16 v2, 0x31

    const-string v3, "list-style-type"

    aput-object v3, v1, v2

    const/16 v2, 0x32

    const-string v3, "quotes"

    aput-object v3, v1, v2

    const/16 v2, 0x33

    const-string v3, "orphans"

    aput-object v3, v1, v2

    const/16 v2, 0x34

    const-string v3, "widows"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/itextpdf/styledxmlparser/css/resolve/CssInheritance;->INHERITABLE_PROPERTIES:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isInheritable(Ljava/lang/String;)Z
    .locals 1

    .line 144
    sget-object v0, Lcom/itextpdf/styledxmlparser/css/resolve/CssInheritance;->INHERITABLE_PROPERTIES:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
