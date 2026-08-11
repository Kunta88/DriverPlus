.class public Lcom/txdriver/ActivityLifecycleObserver;
.super Ljava/lang/Object;
.source "ActivityLifecycleObserver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/txdriver/ActivityLifecycleObserver$ActivityState;
    }
.end annotation


# instance fields
.field private activity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/txdriver/ui/activity/BaseActivity;",
            ">;"
        }
    .end annotation
.end field

.field private activityState:Lcom/txdriver/ActivityLifecycleObserver$ActivityState;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getActivity()Lcom/txdriver/ui/activity/BaseActivity;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/txdriver/ActivityLifecycleObserver;->activity:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 58
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/txdriver/ui/activity/BaseActivity;

    return-object v0
.end method

.method public getActivityState()Lcom/txdriver/ActivityLifecycleObserver$ActivityState;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/txdriver/ActivityLifecycleObserver;->activityState:Lcom/txdriver/ActivityLifecycleObserver$ActivityState;

    return-object v0
.end method

.method public isActivityInForeground()Z
    .locals 2

    .line 62
    sget-object v0, Lcom/txdriver/ActivityLifecycleObserver$ActivityState;->STARTED:Lcom/txdriver/ActivityLifecycleObserver$ActivityState;

    iget-object v1, p0, Lcom/txdriver/ActivityLifecycleObserver;->activityState:Lcom/txdriver/ActivityLifecycleObserver$ActivityState;

    invoke-virtual {v0, v1}, Lcom/txdriver/ActivityLifecycleObserver$ActivityState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/txdriver/ActivityLifecycleObserver$ActivityState;->RESUMED:Lcom/txdriver/ActivityLifecycleObserver$ActivityState;

    iget-object v1, p0, Lcom/txdriver/ActivityLifecycleObserver;->activityState:Lcom/txdriver/ActivityLifecycleObserver$ActivityState;

    invoke-virtual {v0, v1}, Lcom/txdriver/ActivityLifecycleObserver$ActivityState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public onActivityCreated(Lcom/txdriver/ui/activity/BaseActivity;)V
    .locals 1

    .line 16
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/txdriver/ActivityLifecycleObserver;->activity:Ljava/lang/ref/WeakReference;

    .line 17
    sget-object p1, Lcom/txdriver/ActivityLifecycleObserver$ActivityState;->CREATED:Lcom/txdriver/ActivityLifecycleObserver$ActivityState;

    iput-object p1, p0, Lcom/txdriver/ActivityLifecycleObserver;->activityState:Lcom/txdriver/ActivityLifecycleObserver$ActivityState;

    return-void
.end method

.method public onActivityDestroyed(Lcom/txdriver/ui/activity/BaseActivity;)V
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/txdriver/ActivityLifecycleObserver;->activity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eq p1, v0, :cond_0

    return-void

    .line 24
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/txdriver/ActivityLifecycleObserver;->activity:Ljava/lang/ref/WeakReference;

    .line 25
    sget-object p1, Lcom/txdriver/ActivityLifecycleObserver$ActivityState;->DESTROYED:Lcom/txdriver/ActivityLifecycleObserver$ActivityState;

    iput-object p1, p0, Lcom/txdriver/ActivityLifecycleObserver;->activityState:Lcom/txdriver/ActivityLifecycleObserver$ActivityState;

    return-void
.end method

.method public onActivityPaused(Lcom/txdriver/ui/activity/BaseActivity;)V
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/txdriver/ActivityLifecycleObserver;->activity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eq p1, v0, :cond_0

    return-void

    .line 32
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/txdriver/ActivityLifecycleObserver;->activity:Ljava/lang/ref/WeakReference;

    .line 33
    sget-object p1, Lcom/txdriver/ActivityLifecycleObserver$ActivityState;->PAUSED:Lcom/txdriver/ActivityLifecycleObserver$ActivityState;

    iput-object p1, p0, Lcom/txdriver/ActivityLifecycleObserver;->activityState:Lcom/txdriver/ActivityLifecycleObserver$ActivityState;

    return-void
.end method

.method public onActivityResumed(Lcom/txdriver/ui/activity/BaseActivity;)V
    .locals 1

    .line 37
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/txdriver/ActivityLifecycleObserver;->activity:Ljava/lang/ref/WeakReference;

    .line 38
    sget-object p1, Lcom/txdriver/ActivityLifecycleObserver$ActivityState;->RESUMED:Lcom/txdriver/ActivityLifecycleObserver$ActivityState;

    iput-object p1, p0, Lcom/txdriver/ActivityLifecycleObserver;->activityState:Lcom/txdriver/ActivityLifecycleObserver$ActivityState;

    return-void
.end method

.method public onActivityStarted(Lcom/txdriver/ui/activity/BaseActivity;)V
    .locals 1

    .line 42
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/txdriver/ActivityLifecycleObserver;->activity:Ljava/lang/ref/WeakReference;

    .line 43
    sget-object p1, Lcom/txdriver/ActivityLifecycleObserver$ActivityState;->STARTED:Lcom/txdriver/ActivityLifecycleObserver$ActivityState;

    iput-object p1, p0, Lcom/txdriver/ActivityLifecycleObserver;->activityState:Lcom/txdriver/ActivityLifecycleObserver$ActivityState;

    return-void
.end method

.method public onActivityStopped(Lcom/txdriver/ui/activity/BaseActivity;)V
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/txdriver/ActivityLifecycleObserver;->activity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eq p1, v0, :cond_0

    return-void

    .line 50
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/txdriver/ActivityLifecycleObserver;->activity:Ljava/lang/ref/WeakReference;

    .line 51
    sget-object p1, Lcom/txdriver/ActivityLifecycleObserver$ActivityState;->STOPPED:Lcom/txdriver/ActivityLifecycleObserver$ActivityState;

    iput-object p1, p0, Lcom/txdriver/ActivityLifecycleObserver;->activityState:Lcom/txdriver/ActivityLifecycleObserver$ActivityState;

    return-void
.end method
