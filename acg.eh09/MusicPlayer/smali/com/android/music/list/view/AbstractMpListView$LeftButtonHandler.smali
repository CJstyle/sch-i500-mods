.class public Lcom/android/music/list/view/AbstractMpListView$LeftButtonHandler;
.super Landroid/os/Handler;
.source "AbstractMpListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/list/view/AbstractMpListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LeftButtonHandler"
.end annotation


# instance fields
.field mLeft:Landroid/widget/Button;

.field final synthetic this$0:Lcom/android/music/list/view/AbstractMpListView;


# direct methods
.method public constructor <init>(Lcom/android/music/list/view/AbstractMpListView;Landroid/widget/Button;)V
    .locals 0
    .parameter
    .parameter "left"

    .prologue
    .line 2304
    iput-object p1, p0, Lcom/android/music/list/view/AbstractMpListView$LeftButtonHandler;->this$0:Lcom/android/music/list/view/AbstractMpListView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 2305
    iput-object p2, p0, Lcom/android/music/list/view/AbstractMpListView$LeftButtonHandler;->mLeft:Landroid/widget/Button;

    .line 2306
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 2310
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_0

    .line 2311
    iget-object v0, p0, Lcom/android/music/list/view/AbstractMpListView$LeftButtonHandler;->mLeft:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 2315
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 2316
    return-void

    .line 2313
    :cond_0
    iget-object v0, p0, Lcom/android/music/list/view/AbstractMpListView$LeftButtonHandler;->mLeft:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method
