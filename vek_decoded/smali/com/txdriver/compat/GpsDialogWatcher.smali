.class public final Lcom/txdriver/compat/GpsDialogWatcher;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;

.field private fragment:Landroidx/fragment/app/DialogFragment;
.field private handler:Landroid/os/Handler;

.method public constructor <init>(Landroidx/fragment/app/DialogFragment;)V
    .locals 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    iput-object p1, p0, Lcom/txdriver/compat/GpsDialogWatcher;->fragment:Landroidx/fragment/app/DialogFragment;
    new-instance v0, Landroid/os/Handler;
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;
    move-result-object v1
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V
    iput-object v0, p0, Lcom/txdriver/compat/GpsDialogWatcher;->handler:Landroid/os/Handler;
    return-void
.end method

.method public stop()V
    .locals 1
    iget-object v0, p0, Lcom/txdriver/compat/GpsDialogWatcher;->handler:Landroid/os/Handler;
    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
    const/4 v0, 0x0
    iput-object v0, p0, Lcom/txdriver/compat/GpsDialogWatcher;->fragment:Landroidx/fragment/app/DialogFragment;
    return-void
.end method

.method public run()V
    .locals 4
    iget-object v0, p0, Lcom/txdriver/compat/GpsDialogWatcher;->fragment:Landroidx/fragment/app/DialogFragment;
    if-eqz v0, :done
    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;
    move-result-object v1
    if-eqz v1, :done
    :try_start
    const-string v2, "location"
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Landroid/location/LocationManager;
    const-string v2, "gps"
    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z
    move-result v1
    if-eqz v1, :schedule
    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V
    invoke-virtual {p0}, Lcom/txdriver/compat/GpsDialogWatcher;->stop()V
    :try_end
    .catch Ljava/lang/Exception; {:try_start .. :try_end} :error
    return-void
    :error
    move-exception v1
    :schedule
    iget-object v0, p0, Lcom/txdriver/compat/GpsDialogWatcher;->handler:Landroid/os/Handler;
    const-wide/16 v2, 0x1f4
    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :done
    return-void
.end method
