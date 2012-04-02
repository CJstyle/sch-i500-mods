.class Lcom/android/music/list/view/MpListReorderView$1;
.super Landroid/os/Handler;
.source "MpListReorderView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/list/view/MpListReorderView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/music/list/view/MpListReorderView;


# direct methods
.method constructor <init>(Lcom/android/music/list/view/MpListReorderView;)V
    .locals 0
    .parameter

    .prologue
    .line 168
    iput-object p1, p0, Lcom/android/music/list/view/MpListReorderView$1;->this$0:Lcom/android/music/list/view/MpListReorderView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 192
    :try_start_0
    iget-object v0, p0, Lcom/android/music/list/view/MpListReorderView$1;->this$0:Lcom/android/music/list/view/MpListReorderView;

    invoke-static {v0}, Lcom/android/music/list/view/MpListReorderView;->access$000(Lcom/android/music/list/view/MpListReorderView;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->dismissDialog(I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    :goto_0
    iget-object v0, p0, Lcom/android/music/list/view/MpListReorderView$1;->this$0:Lcom/android/music/list/view/MpListReorderView;

    invoke-static {v0}, Lcom/android/music/list/view/MpListReorderView;->access$000(Lcom/android/music/list/view/MpListReorderView;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 195
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 196
    return-void

    .line 193
    :catch_0
    move-exception v0

    goto :goto_0
.end method
