.class final Ljavassist/ClassPathList;
.super Ljava/lang/Object;
.source "ClassPoolTail.java"


# instance fields
.field next:Ljavassist/ClassPathList;

.field path:Ljavassist/ClassPath;


# direct methods
.method constructor <init>(Ljavassist/ClassPath;Ljavassist/ClassPathList;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p2, p0, Ljavassist/ClassPathList;->next:Ljavassist/ClassPathList;

    .line 31
    iput-object p1, p0, Ljavassist/ClassPathList;->path:Ljavassist/ClassPath;

    return-void
.end method
