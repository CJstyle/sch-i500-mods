.class Lcom/sec/android/app/twlauncher/Workspace$4;
.super Ljava/lang/Object;
.source "Workspace.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/twlauncher/Workspace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/twlauncher/Workspace;


# direct methods
.method constructor <init>(Lcom/sec/android/app/twlauncher/Workspace;)V
    .locals 0
    .parameter

    .prologue
    .line 2518
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/Workspace$4;->this$0:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2520
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace$4;->this$0:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-static {v1}, Lcom/sec/android/app/twlauncher/Workspace;->access$300(Lcom/sec/android/app/twlauncher/Workspace;)I

    move-result v0

    .line 2521
    .local v0, nextScreen:I
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace$4;->this$0:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-static {v1}, Lcom/sec/android/app/twlauncher/Workspace;->access$400(Lcom/sec/android/app/twlauncher/Workspace;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    .line 2522
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace$4;->this$0:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-static {v1}, Lcom/sec/android/app/twlauncher/Workspace;->access$500(Lcom/sec/android/app/twlauncher/Workspace;)I

    move-result v1

    if-lez v1, :cond_0

    .line 2523
    add-int/lit8 v0, v0, 0x1

    .line 2524
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace$4;->this$0:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-static {v1}, Lcom/sec/android/app/twlauncher/Workspace;->access$510(Lcom/sec/android/app/twlauncher/Workspace;)I

    .line 2537
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace$4;->this$0:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_3

    if-ltz v0, :cond_3

    .line 2538
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace$4;->this$0:Lcom/sec/android/app/twlauncher/Workspace;

    const/16 v2, 0x12c

    invoke-virtual {v1, v0, v2}, Lcom/sec/android/app/twlauncher/Workspace;->snapToScreen(II)V

    .line 2539
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace$4;->this$0:Lcom/sec/android/app/twlauncher/Workspace;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, p0, v2, v3}, Lcom/sec/android/app/twlauncher/Workspace;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2543
    :goto_1
    return-void

    .line 2525
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace$4;->this$0:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-static {v1}, Lcom/sec/android/app/twlauncher/Workspace;->access$500(Lcom/sec/android/app/twlauncher/Workspace;)I

    move-result v1

    if-gez v1, :cond_1

    .line 2526
    add-int/lit8 v0, v0, -0x1

    .line 2527
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace$4;->this$0:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-static {v1}, Lcom/sec/android/app/twlauncher/Workspace;->access$508(Lcom/sec/android/app/twlauncher/Workspace;)I

    goto :goto_0

    .line 2529
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace$4;->this$0:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-static {v1, v3}, Lcom/sec/android/app/twlauncher/Workspace;->access$602(Lcom/sec/android/app/twlauncher/Workspace;I)I

    .line 2530
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace$4;->this$0:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-static {v1, v3}, Lcom/sec/android/app/twlauncher/Workspace;->access$702(Lcom/sec/android/app/twlauncher/Workspace;Z)Z

    goto :goto_1

    .line 2534
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2541
    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace$4;->this$0:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-static {v1, v3}, Lcom/sec/android/app/twlauncher/Workspace;->access$702(Lcom/sec/android/app/twlauncher/Workspace;Z)Z

    goto :goto_1
.end method
