.class Lcom/android/music/common/util/BatteryChecker$3;
.super Ljava/lang/Object;
.source "BatteryChecker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/common/util/BatteryChecker;
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
    .line 275
    iput-object p1, p0, Lcom/android/music/common/util/BatteryChecker$3;->this$0:Lcom/android/music/common/util/BatteryChecker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 278
    iget-object v0, p0, Lcom/android/music/common/util/BatteryChecker$3;->this$0:Lcom/android/music/common/util/BatteryChecker;

    invoke-static {v0}, Lcom/android/music/common/util/BatteryChecker;->access$200(Lcom/android/music/common/util/BatteryChecker;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "mLowBattery:run() is called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    iget-object v0, p0, Lcom/android/music/common/util/BatteryChecker$3;->this$0:Lcom/android/music/common/util/BatteryChecker;

    iget-object v1, p0, Lcom/android/music/common/util/BatteryChecker$3;->this$0:Lcom/android/music/common/util/BatteryChecker;

    invoke-static {v1}, Lcom/android/music/common/util/BatteryChecker;->access$100(Lcom/android/music/common/util/BatteryChecker;)Lcom/android/music/common/util/OnLowBatteryListener;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/content/Context;

    invoke-virtual {v0, p0}, Lcom/android/music/common/util/BatteryChecker;->showLowBatteryMsg(Landroid/content/Context;)V

    .line 280
    return-void
.end method
