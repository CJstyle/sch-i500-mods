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
    .line 208
    iput-object p1, p0, Lcom/android/music/common/util/BatteryChecker$1;->this$0:Lcom/android/music/common/util/BatteryChecker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 210
    iget-object v1, p0, Lcom/android/music/common/util/BatteryChecker$1;->this$0:Lcom/android/music/common/util/BatteryChecker;

    invoke-static {v1}, Lcom/android/music/common/util/BatteryChecker;->access$000(Lcom/android/music/common/util/BatteryChecker;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 211
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/music/common/util/BatteryChecker;->mShowPopup:Z

    .line 212
    iget-object v1, p0, Lcom/android/music/common/util/BatteryChecker$1;->this$0:Lcom/android/music/common/util/BatteryChecker;

    invoke-static {v1}, Lcom/android/music/common/util/BatteryChecker;->access$100(Lcom/android/music/common/util/BatteryChecker;)Lcom/android/music/common/util/OnLowBatteryListener;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 213
    .local v0, am:Landroid/app/ActivityManager;
    const-string v1, "com.sec.android.app.music"

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V

    .line 214
    return-void
.end method
