.class Lcom/sec/android/inputmethod/axt9/AxT9IME$6;
.super Lcom/sec/android/inputmethod/axt9/AxT9IME$Run;
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
    .locals 1
    .parameter

    .prologue
    .line 650
    iput-object p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME$6;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME$Run;-><init>(Lcom/sec/android/inputmethod/axt9/AxT9IME;Lcom/sec/android/inputmethod/axt9/AxT9IME$1;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 652
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME$6;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->clearLastKey()V

    .line 653
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME$6;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-static {v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->access$600(Lcom/sec/android/inputmethod/axt9/AxT9IME;)V

    .line 654
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME$6;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->commitAndInitComposing()V

    .line 655
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME$6;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-static {v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->access$700(Lcom/sec/android/inputmethod/axt9/AxT9IME;)V

    .line 656
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME$6;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME$6;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-static {v1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->access$800(Lcom/sec/android/inputmethod/axt9/AxT9IME;)Lcom/sec/android/inputmethod/axt9/AxT9IME$Run;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->access$900(Lcom/sec/android/inputmethod/axt9/AxT9IME;Lcom/sec/android/inputmethod/axt9/AxT9IME$Run;)V

    .line 657
    return-void
.end method
