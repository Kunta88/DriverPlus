.class public abstract Lorg/msgpack/template/builder/JavassistTemplateBuilder$JavassistTemplate;
.super Lorg/msgpack/template/AbstractTemplate;
.source "JavassistTemplateBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/msgpack/template/builder/JavassistTemplateBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "JavassistTemplate"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/msgpack/template/AbstractTemplate<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public targetClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field

.field public templates:[Lorg/msgpack/template/Template;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lorg/msgpack/template/Template<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;[Lorg/msgpack/template/Template;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;[",
            "Lorg/msgpack/template/Template<",
            "*>;)V"
        }
    .end annotation

    .line 43
    invoke-direct {p0}, Lorg/msgpack/template/AbstractTemplate;-><init>()V

    .line 44
    iput-object p1, p0, Lorg/msgpack/template/builder/JavassistTemplateBuilder$JavassistTemplate;->targetClass:Ljava/lang/Class;

    .line 45
    iput-object p2, p0, Lorg/msgpack/template/builder/JavassistTemplateBuilder$JavassistTemplate;->templates:[Lorg/msgpack/template/Template;

    return-void
.end method
