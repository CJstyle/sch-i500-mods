.class Landroid/widget/CursorHandle$1;
.super Ljava/lang/Object;
.source "CursorHandle.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/CursorHandle;->hideCursorHandleAndMenuPost()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/CursorHandle;


# direct methods
.method constructor <init>(Landroid/widget/CursorHandle;)V
    .locals 0
    .parameter

    .prologue
    .line 429
    iput-object p1, p0, Landroid/widget/CursorHandle$1;->this$0:Landroid/widget/CursorHandle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 430
    iget-object v0, p0, Landroid/widget/CursorHandle$1;->this$0:Landroid/widget/CursorHandle;

    invoke-static {v0}, Landroid/widget/CursorHandle;->access$200(Landroid/widget/CursorHandle;)Landroid/widget/CursorHandle$ThreadControl;

    move-result-object v0

    monitor-enter v0

    .line 431
    :try_start_0
    iget-object v1, p0, Landroid/widget/CursorHandle$1;->this$0:Landroid/widget/CursorHandle;

    invoke-virtual {v1}, Landroid/widget/CursorHandle;->hideCursorHandle()V

    .line 432
    iget-object v1, p0, Landroid/widget/CursorHandle$1;->this$0:Landroid/widget/CursorHandle;

    invoke-virtual {v1}, Landroid/widget/CursorHandle;->hideCursorHandleMenu()V

    .line 433
    monitor-exit v0

    .line 434
    return-void

    .line 433
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
