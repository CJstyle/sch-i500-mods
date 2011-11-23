.class Lcom/sec/android/app/twlauncher/MenuManager$8;
.super Ljava/lang/Object;
.source "MenuManager.java"

# interfaces
.implements Lcom/sec/android/app/twlauncher/MenuManager$InterruptableAnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/twlauncher/MenuManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mIsEnd:Z

.field final synthetic this$0:Lcom/sec/android/app/twlauncher/MenuManager;


# direct methods
.method constructor <init>(Lcom/sec/android/app/twlauncher/MenuManager;)V
    .locals 0
    .parameter

    .prologue
    .line 2388
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/MenuManager$8;->this$0:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public interrupt()V
    .locals 2

    .prologue
    .line 2412
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/MenuManager$8;->mIsEnd:Z

    .line 2413
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager$8;->this$0:Lcom/sec/android/app/twlauncher/MenuManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->access$1302(Lcom/sec/android/app/twlauncher/MenuManager;Z)Z

    .line 2414
    return-void
.end method

.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "arg0"

    .prologue
    const/4 v1, 0x1

    .line 2391
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/MenuManager$8;->mIsEnd:Z

    if-eqz v0, :cond_0

    .line 2397
    :goto_0
    return-void

    .line 2392
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager$8;->this$0:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-static {v0}, Lcom/sec/android/app/twlauncher/MenuManager;->access$100(Lcom/sec/android/app/twlauncher/MenuManager;)Lcom/sec/android/app/twlauncher/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->getWorkspace()Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Workspace;->setShowIndicator()V

    .line 2393
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager$8;->this$0:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->setClipChildren(Z)V

    .line 2394
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager$8;->this$0:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/MenuManager;->unlock()V

    .line 2395
    iput-boolean v1, p0, Lcom/sec/android/app/twlauncher/MenuManager$8;->mIsEnd:Z

    .line 2396
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager$8;->this$0:Lcom/sec/android/app/twlauncher/MenuManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->access$1302(Lcom/sec/android/app/twlauncher/MenuManager;Z)Z

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 2401
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 4
    .parameter "arg0"

    .prologue
    const/4 v3, 0x0

    .line 2404
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager$8;->this$0:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/twlauncher/MenuManager;->setClipChildren(Z)V

    .line 2405
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager$8;->this$0:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    neg-long v1, v1

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/twlauncher/MenuManager;->access$1202(Lcom/sec/android/app/twlauncher/MenuManager;J)J

    .line 2406
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager$8;->this$0:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/MenuManager;->lock()V

    .line 2407
    iput-boolean v3, p0, Lcom/sec/android/app/twlauncher/MenuManager$8;->mIsEnd:Z

    .line 2408
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager$8;->this$0:Lcom/sec/android/app/twlauncher/MenuManager;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->access$1302(Lcom/sec/android/app/twlauncher/MenuManager;Z)Z

    .line 2409
    return-void
.end method
