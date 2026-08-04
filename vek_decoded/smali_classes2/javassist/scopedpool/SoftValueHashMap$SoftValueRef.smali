.class Ljavassist/scopedpool/SoftValueHashMap$SoftValueRef;
.super Ljava/lang/ref/SoftReference;
.source "SoftValueHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavassist/scopedpool/SoftValueHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SoftValueRef"
.end annotation


# instance fields
.field public key:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V
    .locals 0

    .line 38
    invoke-direct {p0, p2, p3}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 39
    iput-object p1, p0, Ljavassist/scopedpool/SoftValueHashMap$SoftValueRef;->key:Ljava/lang/Object;

    return-void
.end method

.method static synthetic access$000(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)Ljavassist/scopedpool/SoftValueHashMap$SoftValueRef;
    .locals 0

    .line 34
    invoke-static {p0, p1, p2}, Ljavassist/scopedpool/SoftValueHashMap$SoftValueRef;->create(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)Ljavassist/scopedpool/SoftValueHashMap$SoftValueRef;

    move-result-object p0

    return-object p0
.end method

.method private static create(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)Ljavassist/scopedpool/SoftValueHashMap$SoftValueRef;
    .locals 1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 47
    :cond_0
    new-instance v0, Ljavassist/scopedpool/SoftValueHashMap$SoftValueRef;

    invoke-direct {v0, p0, p1, p2}, Ljavassist/scopedpool/SoftValueHashMap$SoftValueRef;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    return-object v0
.end method
