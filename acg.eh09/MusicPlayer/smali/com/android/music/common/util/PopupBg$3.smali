.class Lcom/android/music/common/util/PopupBg$3;
.super Ljava/lang/Object;
.source "PopupBg.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


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
    .line 115
    iput-object p1, p0, Lcom/android/music/common/util/PopupBg$3;->this$0:Lcom/android/music/common/util/PopupBg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "dialog"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x0

    .line 118
    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 119
    invoke-static {v1}, Lcom/android/music/common/util/MusicPlayerUtil;->setSilentPopupShow(Z)V

    .line 120
    iget-object v0, p0, Lcom/android/music/common/util/PopupBg$3;->this$0:Lcom/android/music/common/util/PopupBg;

    invoke-virtual {v0}, Lcom/android/music/common/util/PopupBg;->exitPopupBg()V

    .line 121
    const/4 v0, 0x1

    .line 123
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method
