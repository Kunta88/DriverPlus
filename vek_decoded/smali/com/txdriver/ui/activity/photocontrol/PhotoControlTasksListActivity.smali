.class public Lcom/txdriver/ui/activity/photocontrol/PhotoControlTasksListActivity;
.super Lcom/txdriver/ui/activity/BaseActivity;
.source "PhotoControlTasksListActivity.java"


# static fields
.field public static final ACTION_PHOTO_CONTROL_TASKS_LIST_OPEN:Ljava/lang/String; = "action_photo_control_tasks_list_open"

.field private static final TAG:Ljava/lang/String; = "PhotoControlTaskListFragment"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/txdriver/ui/activity/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 19
    invoke-super {p0, p1}, Lcom/txdriver/ui/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 20
    invoke-virtual {p0}, Lcom/txdriver/ui/activity/photocontrol/PhotoControlTasksListActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/Window;->requestFeature(I)Z

    .line 21
    invoke-virtual {p0}, Lcom/txdriver/ui/activity/photocontrol/PhotoControlTasksListActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/app/ActionBar;->hide()V

    .line 23
    invoke-virtual {p0}, Lcom/txdriver/ui/activity/photocontrol/PhotoControlTasksListActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const-string v0, "PhotoControlTaskListFragment"

    .line 24
    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_0

    return-void

    .line 27
    :cond_0
    new-instance v1, Lcom/txdriver/ui/fragment/PhotoControlTaskListFragment;

    invoke-direct {v1}, Lcom/txdriver/ui/fragment/PhotoControlTaskListFragment;-><init>()V

    .line 28
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    const v2, 0x1020002

    invoke-virtual {p1, v2, v1, v0}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    .line 29
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    return-void
.end method
