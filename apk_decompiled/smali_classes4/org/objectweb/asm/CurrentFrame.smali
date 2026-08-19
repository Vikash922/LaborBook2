.class final Lorg/objectweb/asm/CurrentFrame;
.super Lorg/objectweb/asm/Frame;
.source "CurrentFrame.java"


# direct methods
.method constructor <init>(Lorg/objectweb/asm/Label;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lorg/objectweb/asm/Frame;-><init>(Lorg/objectweb/asm/Label;)V

    return-void
.end method


# virtual methods
.method execute(IILorg/objectweb/asm/Symbol;Lorg/objectweb/asm/SymbolTable;)V
    .locals 0

    .line 51
    invoke-super {p0, p1, p2, p3, p4}, Lorg/objectweb/asm/Frame;->execute(IILorg/objectweb/asm/Symbol;Lorg/objectweb/asm/SymbolTable;)V

    .line 52
    new-instance p1, Lorg/objectweb/asm/Frame;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lorg/objectweb/asm/Frame;-><init>(Lorg/objectweb/asm/Label;)V

    const/4 p2, 0x0

    .line 53
    invoke-virtual {p0, p4, p1, p2}, Lorg/objectweb/asm/CurrentFrame;->merge(Lorg/objectweb/asm/SymbolTable;Lorg/objectweb/asm/Frame;I)Z

    .line 54
    invoke-virtual {p0, p1}, Lorg/objectweb/asm/CurrentFrame;->copyFrom(Lorg/objectweb/asm/Frame;)V

    return-void
.end method
