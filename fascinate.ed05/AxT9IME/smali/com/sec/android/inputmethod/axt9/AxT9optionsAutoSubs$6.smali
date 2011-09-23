.class Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs$6;
.super Ljava/lang/Object;
.source "AxT9optionsAutoSubs.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->PopupMenuOn()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;


# direct methods
.method constructor <init>(Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;)V
    .locals 0
    .parameter

    .prologue
    .line 391
    iput-object p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs$6;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "di"
    .parameter "position"

    .prologue
    .line 393
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs$6;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;

    invoke-static {v0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->access$700(Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-ge p2, v0, :cond_0

    .line 394
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs$6;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;

    invoke-static {v0, p2}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->access$800(Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;I)V

    .line 398
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 399
    :cond_0
    return-void
.end method
