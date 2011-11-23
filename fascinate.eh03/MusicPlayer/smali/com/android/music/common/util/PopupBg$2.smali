.class Lcom/android/music/common/util/PopupBg$2;
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
    .line 102
    iput-object p1, p0, Lcom/android/music/common/util/PopupBg$2;->this$0:Lcom/android/music/common/util/PopupBg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 104
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/music/common/util/MusicPlayerUtil;->setSilentPopupShow(Z)V

    .line 105
    iget-object v0, p0, Lcom/android/music/common/util/PopupBg$2;->this$0:Lcom/android/music/common/util/PopupBg;

    invoke-virtual {v0}, Lcom/android/music/common/util/PopupBg;->exitPopupBg()V

    .line 107
    return-void
.end method
