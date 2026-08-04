.class public Lorg/msgpack/template/builder/JavassistBeansTemplateBuilder;
.super Lorg/msgpack/template/builder/JavassistTemplateBuilder;
.source "JavassistBeansTemplateBuilder.java"


# static fields
.field private static final LOG:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11
    const-class v0, Lorg/msgpack/template/builder/JavassistBeansTemplateBuilder;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/msgpack/template/builder/JavassistBeansTemplateBuilder;->LOG:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lorg/msgpack/template/TemplateRegistry;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lorg/msgpack/template/builder/JavassistTemplateBuilder;-><init>(Lorg/msgpack/template/TemplateRegistry;)V

    return-void
.end method


# virtual methods
.method protected createBuildContext()Lorg/msgpack/template/builder/BuildContext;
    .locals 1

    .line 29
    new-instance v0, Lorg/msgpack/template/builder/BeansBuildContext;

    invoke-direct {v0, p0}, Lorg/msgpack/template/builder/BeansBuildContext;-><init>(Lorg/msgpack/template/builder/JavassistTemplateBuilder;)V

    return-object v0
.end method

.method public matchType(Ljava/lang/reflect/Type;Z)Z
    .locals 3

    .line 19
    check-cast p1, Ljava/lang/Class;

    .line 20
    invoke-static {p1, p2}, Lorg/msgpack/template/builder/JavassistBeansTemplateBuilder;->matchAtClassTemplateBuilder(Ljava/lang/Class;Z)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 21
    sget-object v0, Lorg/msgpack/template/builder/JavassistBeansTemplateBuilder;->LOG:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 22
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "matched type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    :cond_0
    return p2
.end method
