.class public abstract Lcom/txdriver/ui/fragment/BaseListFragment;
.super Landroidx/fragment/app/ListFragment;
.source "BaseListFragment.java"


# instance fields
.field app:Lcom/txdriver/App;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Landroidx/fragment/app/ListFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 0

    .line 19
    invoke-super {p0, p1}, Landroidx/fragment/app/ListFragment;->onAttach(Landroid/app/Activity;)V

    .line 20
    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p1

    check-cast p1, Lcom/txdriver/App;

    iput-object p1, p0, Lcom/txdriver/ui/fragment/BaseListFragment;->app:Lcom/txdriver/App;

    return-void
.end method

.method public onDetach()V
    .locals 0

    .line 25
    invoke-super {p0}, Landroidx/fragment/app/ListFragment;->onDetach()V

    return-void
.end method
