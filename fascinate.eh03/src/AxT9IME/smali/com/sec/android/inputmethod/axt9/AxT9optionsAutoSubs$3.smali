.class Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs$3;
.super Ljava/lang/Object;
.source "AxT9optionsAutoSubs.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;
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
    .line 297
    iput-object p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs$3;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2
    .parameter "tview"
    .parameter "hasfocus"

    .prologue
    .line 299
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 300
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs$3;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;

    check-cast p1, Landroid/widget/TableRow;

    .end local p1
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/TableRow;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->access$402(Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;Ljava/lang/String;)Ljava/lang/String;

    .line 302
    :cond_0
    return-void
.end method
