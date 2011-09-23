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
    .line 2313
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/MenuManager$8;->this$0:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public interrupt()V
    .locals 2

    .prologue
    .line 2314
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/MenuManager$8;->mIsEnd:Z

    .line 2315
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager$8;->this$0:Lcom/sec/android/app/twlauncher/MenuManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->access$1202(Lcom/sec/android/app/twlauncher/MenuManager;Z)Z

    .line 2316
    return-void
.end method

.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "arg0"

    .prologue
    const/4 v1, 0x1

    .line 2293
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/MenuManager$8;->mIsEnd:Z

    if-eqz v0, :cond_0

    .line 2299
    :goto_0
    return-void

    .line 2294
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager$8;->this$0:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-static {v0}, Lcom/sec/android/app/twlauncher/MenuManager;->access$100(Lcom/sec/android/app/twlauncher/MenuManager;)Lcom/sec/android/app/twlauncher/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->getWorkspace()Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Workspace;->setShowIndicator()V

    .line 2295
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager$8;->this$0:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->setClipChildren(Z)V

    .line 2296
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager$8;->this$0:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/MenuManager;->unlock()V

    .line 2297
    iput-boolean v1, p0, Lcom/sec/android/app/twlauncher/MenuManager$8;->mIsEnd:Z

    .line 2298
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager$8;->this$0:Lcom/sec/android/app/twlauncher/MenuManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->access$1202(Lcom/sec/android/app/twlauncher/MenuManager;Z)Z

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 2303
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 4
    .parameter "arg0"

    .prologue
    const/4 v3, 0x0

    .line 2306
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager$8;->this$0:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/twlauncher/MenuManager;->setClipChildren(Z)V

    .line 2307
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager$8;->this$0:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    neg-long v1, v1

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/twlauncher/MenuManager;->access$1102(Lcom/sec/android/app/twlauncher/MenuManager;J)J

    .line 2308
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager$8;->this$0:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/MenuManager;->lock()V

    .line 2309
    iput-boolean v3, p0, Lcom/sec/android/app/twlauncher/MenuManager$8;->mIsEnd:Z

    .line 2310
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager$8;->this$0:Lcom/sec/android/app/twlauncher/MenuManager;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->access$1202(Lcom/sec/android/app/twlauncher/MenuManager;Z)Z

    .line 2311
    return-void
.end method
