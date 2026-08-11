.class public Lcom/txdriver/http/request/HttpPostRequest$RequestResult;
.super Ljava/lang/Object;
.source "HttpPostRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/txdriver/http/request/HttpPostRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RequestResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field exception:Ljava/lang/Exception;

.field response:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Exception;",
            ")V"
        }
    .end annotation

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    iput-object p1, p0, Lcom/txdriver/http/request/HttpPostRequest$RequestResult;->response:Ljava/lang/Object;

    .line 114
    iput-object p2, p0, Lcom/txdriver/http/request/HttpPostRequest$RequestResult;->exception:Ljava/lang/Exception;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Exception;Lcom/txdriver/http/request/HttpPostRequest$1;)V
    .locals 0

    .line 108
    invoke-direct {p0, p1, p2}, Lcom/txdriver/http/request/HttpPostRequest$RequestResult;-><init>(Ljava/lang/Object;Ljava/lang/Exception;)V

    return-void
.end method
