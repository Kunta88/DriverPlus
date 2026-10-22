.class Lcom/txdriver/compat/AutoAcceptAlert$1;
.super Ljava/lang/Object;
.source "AutoAcceptAlert.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/txdriver/compat/AutoAcceptAlert;->play(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$app:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 22
    iput-object p1, p0, Lcom/txdriver/compat/AutoAcceptAlert$1;->val$app:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 22
    iget-object v0, p0, Lcom/txdriver/compat/AutoAcceptAlert$1;->val$app:Landroid/content/Context;

    # invokes: Lcom/txdriver/compat/AutoAcceptAlert;->begin(Landroid/content/Context;)V
    invoke-static {v0}, Lcom/txdriver/compat/AutoAcceptAlert;->access$000(Landroid/content/Context;)V

    return-void
.end method
