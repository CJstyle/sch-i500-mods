.class Lcom/sec/android/inputmethod/axt9/AxT9IME$1;
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
    .line 548
    iput-object p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME$1;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 550
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 559
    :goto_0
    return-void

    .line 552
    :pswitch_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 553
    .local v0, keyCode:I
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME$1;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v1, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->playKeyClick(I)V

    goto :goto_0

    .line 556
    .end local v0           #keyCode:I
    :pswitch_1
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME$1;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->vibrate()V

    goto :goto_0

    .line 550
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
