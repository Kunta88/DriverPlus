.class Lcom/txdriver/ui/activity/LaunchActivity$3;
.super Lcom/txdriver/ui/view/ViewOnClickListener;
.source "LaunchActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/txdriver/ui/activity/LaunchActivity;->initLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/txdriver/ui/activity/LaunchActivity;


# direct methods
.method constructor <init>(Lcom/txdriver/ui/activity/LaunchActivity;)V
    .locals 0

    .line 140
    iput-object p1, p0, Lcom/txdriver/ui/activity/LaunchActivity$3;->this$0:Lcom/txdriver/ui/activity/LaunchActivity;

    invoke-direct {p0}, Lcom/txdriver/ui/view/ViewOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewClick(Landroid/view/View;)V
    .locals 0

    .line 143
    iget-object p1, p0, Lcom/txdriver/ui/activity/LaunchActivity$3;->this$0:Lcom/txdriver/ui/activity/LaunchActivity;

    invoke-static {p1}, Lcom/txdriver/ui/activity/LaunchActivity;->access$400(Lcom/txdriver/ui/activity/LaunchActivity;)V

    return-void
.end method
