.class Lcom/txdriver/ui/activity/OrderActivity$10;
.super Lcom/txdriver/ui/adapter/TabsAdapter;
.source "OrderActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/txdriver/ui/activity/OrderActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/txdriver/ui/activity/OrderActivity;


# direct methods
.method constructor <init>(Lcom/txdriver/ui/activity/OrderActivity;Lcom/txdriver/ui/activity/BaseActivity;Landroidx/viewpager/widget/ViewPager;)V
    .locals 0

    .line 263
    iput-object p1, p0, Lcom/txdriver/ui/activity/OrderActivity$10;->this$0:Lcom/txdriver/ui/activity/OrderActivity;

    invoke-direct {p0, p2, p3}, Lcom/txdriver/ui/adapter/TabsAdapter;-><init>(Lcom/txdriver/ui/activity/BaseActivity;Landroidx/viewpager/widget/ViewPager;)V

    return-void
.end method


# virtual methods
.method public onTabSelected(Landroidx/appcompat/app/ActionBar$Tab;Landroidx/fragment/app/FragmentTransaction;)V
    .locals 0

    .line 266
    invoke-super {p0, p1, p2}, Lcom/txdriver/ui/adapter/TabsAdapter;->onTabSelected(Landroidx/appcompat/app/ActionBar$Tab;Landroidx/fragment/app/FragmentTransaction;)V

    .line 267
    iget-object p1, p0, Lcom/txdriver/ui/activity/OrderActivity$10;->this$0:Lcom/txdriver/ui/activity/OrderActivity;

    invoke-virtual {p1}, Lcom/txdriver/ui/activity/OrderActivity;->updateButtons()V

    return-void
.end method
