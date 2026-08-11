.class public Ljavassist/compiler/MemberResolver$Method;
.super Ljava/lang/Object;
.source "MemberResolver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavassist/compiler/MemberResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Method"
.end annotation


# instance fields
.field public declaring:Ljavassist/CtClass;

.field public info:Ljavassist/bytecode/MethodInfo;

.field public notmatch:I


# direct methods
.method public constructor <init>(Ljavassist/CtClass;Ljavassist/bytecode/MethodInfo;I)V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Ljavassist/compiler/MemberResolver$Method;->declaring:Ljavassist/CtClass;

    .line 50
    iput-object p2, p0, Ljavassist/compiler/MemberResolver$Method;->info:Ljavassist/bytecode/MethodInfo;

    .line 51
    iput p3, p0, Ljavassist/compiler/MemberResolver$Method;->notmatch:I

    return-void
.end method


# virtual methods
.method public isStatic()Z
    .locals 1

    .line 58
    iget-object v0, p0, Ljavassist/compiler/MemberResolver$Method;->info:Ljavassist/bytecode/MethodInfo;

    invoke-virtual {v0}, Ljavassist/bytecode/MethodInfo;->getAccessFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
