.class Lcom/android/server/InputMethodManagerService$4;
.super Ljava/lang/Object;
.source "InputMethodManagerService.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/InputMethodManagerService;->showInputMethodMenu()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/InputMethodManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/InputMethodManagerService;)V
    .locals 0
    .parameter

    .prologue
    .line 1710
    iput-object p1, p0, Lcom/android/server/InputMethodManagerService$4;->this$0:Lcom/android/server/InputMethodManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1711
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService$4;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v1, v1, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 1712
    :try_start_0
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService$4;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v2, v2, Lcom/android/server/InputMethodManagerService;->mIms:[Landroid/view/inputmethod/InputMethodInfo;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService$4;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v2, v2, Lcom/android/server/InputMethodManagerService;->mIms:[Landroid/view/inputmethod/InputMethodInfo;

    array-length v2, v2

    if-gt v2, p2, :cond_1

    .line 1713
    :cond_0
    monitor-exit v1

    .line 1727
    :goto_0
    return-void

    .line 1715
    :cond_1
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService$4;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v2, v2, Lcom/android/server/InputMethodManagerService;->mIms:[Landroid/view/inputmethod/InputMethodInfo;

    aget-object v0, v2, p2

    .line 1716
    .local v0, im:Landroid/view/inputmethod/InputMethodInfo;
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService$4;->this$0:Lcom/android/server/InputMethodManagerService;

    invoke-virtual {v2}, Lcom/android/server/InputMethodManagerService;->hideInputMethodMenu()V

    .line 1717
    if-eqz v0, :cond_2

    .line 1718
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService$4;->this$0:Lcom/android/server/InputMethodManagerService;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/InputMethodManagerService;->setInputMethodLocked(Ljava/lang/String;)V

    .line 1719
    invoke-static {}, Lcom/android/server/InputMethodManagerService;->access$000()I

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/android/server/InputMethodManagerService;->access$100()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1720
    invoke-static {}, Lcom/android/server/InputMethodManagerService;->access$100()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService$4;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v3, v3, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1721
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService$4;->this$0:Lcom/android/server/InputMethodManagerService;

    invoke-virtual {v2}, Lcom/android/server/InputMethodManagerService;->showSIPInformationDialog()V

    .line 1726
    :cond_2
    monitor-exit v1

    goto :goto_0

    .end local v0           #im:Landroid/view/inputmethod/InputMethodInfo;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method
