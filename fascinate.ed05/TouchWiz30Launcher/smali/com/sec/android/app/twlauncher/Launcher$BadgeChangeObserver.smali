.class Lcom/sec/android/app/twlauncher/Launcher$BadgeChangeObserver;
.super Landroid/database/ContentObserver;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/twlauncher/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BadgeChangeObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/twlauncher/Launcher;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/twlauncher/Launcher;)V
    .locals 1
    .parameter

    .prologue
    .line 3870
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/Launcher$BadgeChangeObserver;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    .line 3871
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 3872
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .parameter "selfChange"

    .prologue
    .line 3876
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher$BadgeChangeObserver;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-static {v0}, Lcom/sec/android/app/twlauncher/Launcher;->access$300(Lcom/sec/android/app/twlauncher/Launcher;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3877
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher$BadgeChangeObserver;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-static {v0}, Lcom/sec/android/app/twlauncher/Launcher;->access$2900(Lcom/sec/android/app/twlauncher/Launcher;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher$BadgeChangeObserver;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-static {v1}, Lcom/sec/android/app/twlauncher/Launcher;->access$2800(Lcom/sec/android/app/twlauncher/Launcher;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3878
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher$BadgeChangeObserver;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-static {v0}, Lcom/sec/android/app/twlauncher/Launcher;->access$2900(Lcom/sec/android/app/twlauncher/Launcher;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher$BadgeChangeObserver;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-static {v1}, Lcom/sec/android/app/twlauncher/Launcher;->access$2800(Lcom/sec/android/app/twlauncher/Launcher;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3882
    :goto_0
    return-void

    .line 3880
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher$BadgeChangeObserver;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sec/android/app/twlauncher/Launcher;->access$3002(Lcom/sec/android/app/twlauncher/Launcher;Z)Z

    goto :goto_0
.end method
