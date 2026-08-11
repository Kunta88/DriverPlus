.class Lcom/txdriver/ui/view/DriverParkingsView$1;
.super Landroid/database/DataSetObserver;
.source "DriverParkingsView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/txdriver/ui/view/DriverParkingsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/txdriver/ui/view/DriverParkingsView;


# direct methods
.method constructor <init>(Lcom/txdriver/ui/view/DriverParkingsView;)V
    .locals 0

    .line 17
    iput-object p1, p0, Lcom/txdriver/ui/view/DriverParkingsView$1;->this$0:Lcom/txdriver/ui/view/DriverParkingsView;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/txdriver/ui/view/DriverParkingsView$1;->this$0:Lcom/txdriver/ui/view/DriverParkingsView;

    invoke-static {v0}, Lcom/txdriver/ui/view/DriverParkingsView;->access$000(Lcom/txdriver/ui/view/DriverParkingsView;)V

    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/txdriver/ui/view/DriverParkingsView$1;->this$0:Lcom/txdriver/ui/view/DriverParkingsView;

    invoke-static {v0}, Lcom/txdriver/ui/view/DriverParkingsView;->access$000(Lcom/txdriver/ui/view/DriverParkingsView;)V

    return-void
.end method
