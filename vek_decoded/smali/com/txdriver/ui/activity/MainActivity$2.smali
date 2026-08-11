.class Lcom/txdriver/ui/activity/MainActivity$2;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;


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

    .line 176
    iput-object p1, p0, Lcom/txdriver/ui/activity/MainActivity$2;->this$0:Lcom/txdriver/ui/activity/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabReselected(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 0

    return-void
.end method

.method public onTabSelected(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 0

    .line 179
    iget-object p1, p0, Lcom/txdriver/ui/activity/MainActivity$2;->this$0:Lcom/txdriver/ui/activity/MainActivity;

    invoke-virtual {p1}, Lcom/txdriver/ui/activity/MainActivity;->updateButtons()V

    return-void
.end method

.method public onTabUnselected(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 0

    return-void
.end method
