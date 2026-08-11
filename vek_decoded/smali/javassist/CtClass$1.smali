.class Ljavassist/CtClass$1;
.super Ljavassist/ClassMap;
.source "CtClass.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavassist/CtClass;->getRefClasses()Ljava/util/Collection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljavassist/CtClass;


# direct methods
.method constructor <init>(Ljavassist/CtClass;)V
    .locals 0

    .line 434
    iput-object p1, p0, Ljavassist/CtClass$1;->this$0:Ljavassist/CtClass;

    invoke-direct {p0}, Ljavassist/ClassMap;-><init>()V

    return-void
.end method


# virtual methods
.method public fix(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 440
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljavassist/CtClass$1;->toJavaName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 441
    invoke-virtual {p0, p1, p1}, Ljavassist/CtClass$1;->put0(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 436
    invoke-virtual {p0, p1, p2}, Ljavassist/CtClass$1;->put0(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
