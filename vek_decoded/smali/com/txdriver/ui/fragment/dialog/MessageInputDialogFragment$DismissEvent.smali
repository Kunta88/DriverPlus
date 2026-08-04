.class public Lcom/txdriver/ui/fragment/dialog/MessageInputDialogFragment$DismissEvent;
.super Ljava/lang/Object;
.source "MessageInputDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/txdriver/ui/fragment/dialog/MessageInputDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DismissEvent"
.end annotation


# instance fields
.field private id:J


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-wide p1, p0, Lcom/txdriver/ui/fragment/dialog/MessageInputDialogFragment$DismissEvent;->id:J

    return-void
.end method


# virtual methods
.method public getId()J
    .locals 2

    .line 87
    iget-wide v0, p0, Lcom/txdriver/ui/fragment/dialog/MessageInputDialogFragment$DismissEvent;->id:J

    return-wide v0
.end method
