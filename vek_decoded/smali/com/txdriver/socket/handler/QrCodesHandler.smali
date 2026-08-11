.class public Lcom/txdriver/socket/handler/QrCodesHandler;
.super Lcom/txdriver/socket/handler/AbstractPacketHandler;
.source "QrCodesHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/txdriver/socket/handler/AbstractPacketHandler<",
        "Ljava/util/List<",
        "Lcom/txdriver/socket/data/QrCodeData;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "QrCodesHandler"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/txdriver/App;)V
    .locals 1

    .line 29
    new-instance v0, Lcom/txdriver/socket/data/template/QrCodeTemplate;

    invoke-direct {v0}, Lcom/txdriver/socket/data/template/QrCodeTemplate;-><init>()V

    invoke-static {v0}, Lorg/msgpack/template/Templates;->tList(Lorg/msgpack/template/Template;)Lorg/msgpack/template/Template;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/txdriver/socket/handler/AbstractPacketHandler;-><init>(Lcom/txdriver/App;Lorg/msgpack/template/Template;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic handle(Ljava/lang/Object;)V
    .locals 0

    .line 25
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/txdriver/socket/handler/QrCodesHandler;->handle(Ljava/util/List;)V

    return-void
.end method

.method public handle(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/txdriver/socket/data/QrCodeData;",
            ">;)V"
        }
    .end annotation

    .line 34
    new-instance v0, Lcom/txdriver/ui/activity/QrCodeActivity$QrCodeActivityRunner;

    iget-object v1, p0, Lcom/txdriver/socket/handler/QrCodesHandler;->app:Lcom/txdriver/App;

    invoke-direct {v0, v1, p1}, Lcom/txdriver/ui/activity/QrCodeActivity$QrCodeActivityRunner;-><init>(Lcom/txdriver/App;Ljava/util/List;)V

    invoke-virtual {p0, v0}, Lcom/txdriver/socket/handler/QrCodesHandler;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
