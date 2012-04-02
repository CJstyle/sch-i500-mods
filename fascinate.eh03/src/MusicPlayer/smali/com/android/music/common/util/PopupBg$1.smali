.class Lcom/android/music/common/util/PopupBg$1;
.super Ljava/lang/Object;
.source "PopupBg.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/music/common/util/PopupBg;->showPopupBg()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/music/common/util/PopupBg;


# direct methods
.method constructor <init>(Lcom/android/music/common/util/PopupBg;)V
    .locals 0
    .parameter

    .prologue
    .line 93
    iput-object p1, p0, Lcom/android/music/common/util/PopupBg$1;->this$0:Lcom/android/music/common/util/PopupBg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 96
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/music/common/util/MusicPlayerUtil;->setSilentPopupShow(Z)V

    .line 97
    iget-object v0, p0, Lcom/android/music/common/util/PopupBg$1;->this$0:Lcom/android/music/common/util/PopupBg;

    invoke-virtual {v0}, Lcom/android/music/common/util/PopupBg;->exitPopupBg()V

    .line 98
    iget-object v0, p0, Lcom/android/music/common/util/PopupBg$1;->this$0:Lcom/android/music/common/util/PopupBg;

    iget-object v0, v0, Lcom/android/music/common/util/PopupBg;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/music/common/util/PopupBg$1;->this$0:Lcom/android/music/common/util/PopupBg;

    invoke-static {v1}, Lcom/android/music/common/util/PopupBg;->access$000(Lcom/android/music/common/util/PopupBg;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 99
    iget-object v0, p0, Lcom/android/music/common/util/PopupBg$1;->this$0:Lcom/android/music/common/util/PopupBg;

    iget-object v0, v0, Lcom/android/music/common/util/PopupBg;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/music/common/util/PopupBg$1;->this$0:Lcom/android/music/common/util/PopupBg;

    invoke-static {v1}, Lcom/android/music/common/util/PopupBg;->access$000(Lcom/android/music/common/util/PopupBg;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 100
    return-void
.end method
