.class Lcom/sec/android/inputmethod/axt9/AxT9IME$18;
.super Landroid/content/BroadcastReceiver;
.source "AxT9IME.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/inputmethod/axt9/AxT9IME;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/inputmethod/axt9/AxT9IME;


# direct methods
.method constructor <init>(Lcom/sec/android/inputmethod/axt9/AxT9IME;)V
    .locals 0
    .parameter

    .prologue
    .line 4058
    iput-object p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME$18;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v3, 0x1

    .line 4063
    const-string v1, "com.broadcom.bt.service.hid.extra.STATE"

    const/4 v2, -0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 4065
    .local v0, state:I
    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    if-ne v0, v3, :cond_2

    .line 4066
    :cond_0
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME$18;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-static {v1, v3}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->access$2400(Lcom/sec/android/inputmethod/axt9/AxT9IME;Z)V

    .line 4070
    :cond_1
    :goto_0
    return-void

    .line 4067
    :cond_2
    if-eqz v0, :cond_3

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 4068
    :cond_3
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME$18;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->access$2400(Lcom/sec/android/inputmethod/axt9/AxT9IME;Z)V

    goto :goto_0
.end method
