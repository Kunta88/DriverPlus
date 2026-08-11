.class Lcom/txdriver/ui/activity/MainActivity$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/google/android/material/tabs/TabLayoutMediator$TabConfigurationStrategy;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/txdriver/ui/activity/MainActivity;->setupAdapters()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/txdriver/ui/activity/MainActivity;


# direct methods
.method constructor <init>(Lcom/txdriver/ui/activity/MainActivity;)V
    .locals 0

    .line 170
    iput-object p1, p0, Lcom/txdriver/ui/activity/MainActivity$1;->this$0:Lcom/txdriver/ui/activity/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigureTab(Lcom/google/android/material/tabs/TabLayout$Tab;I)V
    .locals 1

    .line 173
    iget-object v0, p0, Lcom/txdriver/ui/activity/MainActivity$1;->this$0:Lcom/txdriver/ui/activity/MainActivity;

    invoke-static {v0, p1, p2}, Lcom/txdriver/ui/activity/MainActivity;->access$000(Lcom/txdriver/ui/activity/MainActivity;Lcom/google/android/material/tabs/TabLayout$Tab;I)V

    return-void
.end method
