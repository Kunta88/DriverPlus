.class Lcom/txdriver/ui/activity/LaunchActivity$1;
.super Ljava/lang/Object;
.source "LaunchActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


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

    .line 96
    iput-object p1, p0, Lcom/txdriver/ui/activity/LaunchActivity$1;->this$0:Lcom/txdriver/ui/activity/LaunchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const-wide/16 p1, 0x0

    cmp-long p3, p4, p1

    if-lez p3, :cond_0

    .line 100
    iget-object p1, p0, Lcom/txdriver/ui/activity/LaunchActivity$1;->this$0:Lcom/txdriver/ui/activity/LaunchActivity;

    iget-object p1, p1, Lcom/txdriver/ui/activity/LaunchActivity;->app:Lcom/txdriver/App;

    invoke-virtual {p1}, Lcom/txdriver/App;->getLocationManager()Lcom/txdriver/location/LocationManager;

    move-result-object p1

    iget-object p2, p0, Lcom/txdriver/ui/activity/LaunchActivity$1;->this$0:Lcom/txdriver/ui/activity/LaunchActivity;

    invoke-virtual {p1, p2}, Lcom/txdriver/location/LocationManager;->removeLocationChangeListener(Lcom/txdriver/location/LocationManager$LocationChangeListener;)V

    .line 101
    iget-object p1, p0, Lcom/txdriver/ui/activity/LaunchActivity$1;->this$0:Lcom/txdriver/ui/activity/LaunchActivity;

    invoke-static {p1, p4, p5}, Lcom/txdriver/ui/activity/LaunchActivity;->access$000(Lcom/txdriver/ui/activity/LaunchActivity;J)V

    goto :goto_0

    .line 103
    :cond_0
    iget-object p1, p0, Lcom/txdriver/ui/activity/LaunchActivity$1;->this$0:Lcom/txdriver/ui/activity/LaunchActivity;

    invoke-static {p1}, Lcom/txdriver/ui/activity/LaunchActivity;->access$100(Lcom/txdriver/ui/activity/LaunchActivity;)Landroid/view/View;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method
