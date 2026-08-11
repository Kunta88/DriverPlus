.class Lcom/txdriver/ui/fragment/ParkingsFragment$5;
.super Ljava/lang/Object;
.source "ParkingsFragment.java"

# interfaces
.implements Lcom/txdriver/ui/view/DriverParkingsView$OnParkingClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/txdriver/ui/fragment/ParkingsFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/txdriver/ui/fragment/ParkingsFragment;


# direct methods
.method constructor <init>(Lcom/txdriver/ui/fragment/ParkingsFragment;)V
    .locals 0

    .line 201
    iput-object p1, p0, Lcom/txdriver/ui/fragment/ParkingsFragment$5;->this$0:Lcom/txdriver/ui/fragment/ParkingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(J)V
    .locals 1

    .line 204
    iget-object v0, p0, Lcom/txdriver/ui/fragment/ParkingsFragment$5;->this$0:Lcom/txdriver/ui/fragment/ParkingsFragment;

    invoke-static {v0, p1, p2}, Lcom/txdriver/ui/fragment/ParkingsFragment;->access$600(Lcom/txdriver/ui/fragment/ParkingsFragment;J)V

    return-void
.end method
