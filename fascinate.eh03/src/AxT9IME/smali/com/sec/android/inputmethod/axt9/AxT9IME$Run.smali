.class Lcom/sec/android/inputmethod/axt9/AxT9IME$Run;
.super Ljava/lang/Object;
.source "AxT9IME.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/inputmethod/axt9/AxT9IME;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Run"
.end annotation


# instance fields
.field private bRunning:Z

.field final synthetic this$0:Lcom/sec/android/inputmethod/axt9/AxT9IME;


# direct methods
.method private constructor <init>(Lcom/sec/android/inputmethod/axt9/AxT9IME;)V
    .locals 1
    .parameter

    .prologue
    .line 639
    iput-object p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME$Run;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 640
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME$Run;->bRunning:Z

    .line 639
    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/inputmethod/axt9/AxT9IME;Lcom/sec/android/inputmethod/axt9/AxT9IME$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 639
    invoke-direct {p0, p1}, Lcom/sec/android/inputmethod/axt9/AxT9IME$Run;-><init>(Lcom/sec/android/inputmethod/axt9/AxT9IME;)V

    return-void
.end method


# virtual methods
.method public isRunning()Z
    .locals 1

    .prologue
    .line 643
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME$Run;->bRunning:Z

    return v0
.end method

.method public run()V
    .locals 0

    .prologue
    .line 644
    return-void
.end method

.method public setRunning(Z)V
    .locals 0
    .parameter "running"

    .prologue
    .line 642
    iput-boolean p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME$Run;->bRunning:Z

    return-void
.end method
