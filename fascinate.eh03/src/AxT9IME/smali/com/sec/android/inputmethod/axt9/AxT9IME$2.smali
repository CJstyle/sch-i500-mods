.class Lcom/sec/android/inputmethod/axt9/AxT9IME$2;
.super Landroid/os/Handler;
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
    .line 564
    iput-object p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME$2;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 566
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 576
    :cond_0
    :goto_0
    return-void

    .line 568
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME$2;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-static {v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->access$100(Lcom/sec/android/inputmethod/axt9/AxT9IME;)V

    goto :goto_0

    .line 571
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME$2;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-static {v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->access$200(Lcom/sec/android/inputmethod/axt9/AxT9IME;)J

    move-result-wide v0

    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME$2;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-static {v2}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->access$300(Lcom/sec/android/inputmethod/axt9/AxT9IME;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 572
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME$2;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->access$400(Lcom/sec/android/inputmethod/axt9/AxT9IME;Z)V

    goto :goto_0

    .line 566
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
