.class final Lcom/txdriver/compat/ModernCompat$NetworkWatcher;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "ModernCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/txdriver/compat/ModernCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "NetworkWatcher"
.end annotation


# instance fields
.field private final owner:Lcom/txdriver/compat/ModernCompat;


# direct methods
.method constructor <init>(Lcom/txdriver/compat/ModernCompat;)V
    .registers 2

    .line 235
    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    iput-object p1, p0, Lcom/txdriver/compat/ModernCompat$NetworkWatcher;->owner:Lcom/txdriver/compat/ModernCompat;

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .registers 3

    .line 236
    iget-object v0, p0, Lcom/txdriver/compat/ModernCompat$NetworkWatcher;->owner:Lcom/txdriver/compat/ModernCompat;

    invoke-virtual {v0, p1}, Lcom/txdriver/compat/ModernCompat;->onAvailable(Landroid/net/Network;)V

    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .registers 3

    .line 237
    iget-object v0, p0, Lcom/txdriver/compat/ModernCompat$NetworkWatcher;->owner:Lcom/txdriver/compat/ModernCompat;

    invoke-virtual {v0, p1}, Lcom/txdriver/compat/ModernCompat;->onLost(Landroid/net/Network;)V

    return-void
.end method
