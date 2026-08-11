.class Lcom/txdriver/ui/activity/DriverInfoActivity$1;
.super Ljava/lang/Object;
.source "DriverInfoActivity.java"

# interfaces
.implements Lcom/google/android/material/tabs/TabLayoutMediator$TabConfigurationStrategy;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/txdriver/ui/activity/DriverInfoActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/txdriver/ui/activity/DriverInfoActivity;

.field final synthetic val$tabsAdapter:Lcom/txdriver/ui/adapter/NewTabsAdapter;


# direct methods
.method constructor <init>(Lcom/txdriver/ui/activity/DriverInfoActivity;Lcom/txdriver/ui/adapter/NewTabsAdapter;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/txdriver/ui/activity/DriverInfoActivity$1;->this$0:Lcom/txdriver/ui/activity/DriverInfoActivity;

    iput-object p2, p0, Lcom/txdriver/ui/activity/DriverInfoActivity$1;->val$tabsAdapter:Lcom/txdriver/ui/adapter/NewTabsAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigureTab(Lcom/google/android/material/tabs/TabLayout$Tab;I)V
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/txdriver/ui/activity/DriverInfoActivity$1;->val$tabsAdapter:Lcom/txdriver/ui/adapter/NewTabsAdapter;

    iget-object v0, v0, Lcom/txdriver/ui/adapter/NewTabsAdapter;->fragmentTitleList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Lcom/google/android/material/tabs/TabLayout$Tab;->setText(Ljava/lang/CharSequence;)Lcom/google/android/material/tabs/TabLayout$Tab;

    return-void
.end method
