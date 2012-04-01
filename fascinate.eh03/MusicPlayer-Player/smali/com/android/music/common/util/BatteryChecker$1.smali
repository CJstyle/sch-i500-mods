.class Lcom/android/music/common/util/BatteryChecker$1;
.super Ljava/lang/Object;
.source "BatteryChecker.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/music/common/util/BatteryChecker;->showLowBatteryMsg(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/music/common/util/BatteryChecker;


# direct methods
.method constructor <init>(Lcom/android/music/common/util/BatteryChecker;)V
    .locals 0
    .parameter

    .prologue
    .line 257
    iput-object p1, p0, Lcom/android/music/common/util/BatteryChecker$1;->this$0:Lcom/android/music/common/util/BatteryChecker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 260
    iget-object v0, p0, Lcom/android/music/common/util/BatteryChecker$1;->this$0:Lcom/android/music/common/util/BatteryChecker;

    invoke-static {v0}, Lcom/android/music/common/util/BatteryChecker;->access$000(Lcom/android/music/common/util/BatteryChecker;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 261
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/music/common/util/BatteryChecker;->mShowPopup:Z

    .line 263
    iget-object v0, p0, Lcom/android/music/common/util/BatteryChecker$1;->this$0:Lcom/android/music/common/util/BatteryChecker;

    invoke-static {v0}, Lcom/android/music/common/util/BatteryChecker;->access$100(Lcom/android/music/common/util/BatteryChecker;)Lcom/android/music/common/util/OnLowBatteryListener;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/content/Context;

    invoke-static {p0}, Lcom/android/music/common/util/MusicUtils;->forceStopPackage(Landroid/content/Context;)V

    .line 267
    return-void
.end method
