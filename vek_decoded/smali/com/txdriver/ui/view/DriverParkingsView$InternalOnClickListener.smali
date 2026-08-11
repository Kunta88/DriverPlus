.class Lcom/txdriver/ui/view/DriverParkingsView$InternalOnClickListener;
.super Lcom/txdriver/ui/view/ViewOnClickListener;
.source "DriverParkingsView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/txdriver/ui/view/DriverParkingsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InternalOnClickListener"
.end annotation


# instance fields
.field id:J

.field final synthetic this$0:Lcom/txdriver/ui/view/DriverParkingsView;


# direct methods
.method public constructor <init>(Lcom/txdriver/ui/view/DriverParkingsView;J)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/txdriver/ui/view/DriverParkingsView$InternalOnClickListener;->this$0:Lcom/txdriver/ui/view/DriverParkingsView;

    invoke-direct {p0}, Lcom/txdriver/ui/view/ViewOnClickListener;-><init>()V

    .line 76
    iput-wide p2, p0, Lcom/txdriver/ui/view/DriverParkingsView$InternalOnClickListener;->id:J

    return-void
.end method


# virtual methods
.method public onViewClick(Landroid/view/View;)V
    .locals 2

    .line 81
    iget-object p1, p0, Lcom/txdriver/ui/view/DriverParkingsView$InternalOnClickListener;->this$0:Lcom/txdriver/ui/view/DriverParkingsView;

    invoke-static {p1}, Lcom/txdriver/ui/view/DriverParkingsView;->access$100(Lcom/txdriver/ui/view/DriverParkingsView;)Lcom/txdriver/ui/view/DriverParkingsView$OnParkingClickListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 82
    iget-object p1, p0, Lcom/txdriver/ui/view/DriverParkingsView$InternalOnClickListener;->this$0:Lcom/txdriver/ui/view/DriverParkingsView;

    invoke-static {p1}, Lcom/txdriver/ui/view/DriverParkingsView;->access$100(Lcom/txdriver/ui/view/DriverParkingsView;)Lcom/txdriver/ui/view/DriverParkingsView$OnParkingClickListener;

    move-result-object p1

    iget-wide v0, p0, Lcom/txdriver/ui/view/DriverParkingsView$InternalOnClickListener;->id:J

    invoke-interface {p1, v0, v1}, Lcom/txdriver/ui/view/DriverParkingsView$OnParkingClickListener;->onClick(J)V

    :cond_0
    return-void
.end method
