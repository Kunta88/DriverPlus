.class public Lru/yandex/o;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lru/yandex/core/TelephonyNetworkInfoRequest;


# direct methods
.method public constructor <init>(Lru/yandex/core/TelephonyNetworkInfoRequest;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lru/yandex/o;->b:Lru/yandex/core/TelephonyNetworkInfoRequest;

    iput-object p2, p0, Lru/yandex/o;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    iget-object v0, p0, Lru/yandex/o;->b:Lru/yandex/core/TelephonyNetworkInfoRequest;

    invoke-static {v0}, Lru/yandex/core/TelephonyNetworkInfoRequest;->access$000(Lru/yandex/core/TelephonyNetworkInfoRequest;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lru/yandex/o;->a:Landroid/content/Context;

    invoke-static {v0}, Lru/yandex/n;->a(Landroid/content/Context;)Lru/yandex/n;

    move-result-object v0

    iget-object v1, p0, Lru/yandex/o;->b:Lru/yandex/core/TelephonyNetworkInfoRequest;

    invoke-static {v1}, Lru/yandex/core/TelephonyNetworkInfoRequest;->access$100(Lru/yandex/core/TelephonyNetworkInfoRequest;)J

    move-result-wide v2

    iget v4, v0, Lru/yandex/n;->a:I

    iget v5, v0, Lru/yandex/n;->b:I

    iget-object v6, v0, Lru/yandex/n;->c:Ljava/lang/String;

    iget-object v7, v0, Lru/yandex/n;->d:Ljava/lang/String;

    invoke-static/range {v2 .. v7}, Lru/yandex/core/TelephonyNetworkInfoRequest;->access$200(JIILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
